package ensiastjob.dao;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.Offer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class OfferDaoImpl implements OfferDao {
    private final Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public OfferDaoImpl() {
        connection = DBConnection.getConnected();
    }

    @Override
    public int addOffer(Offer offer) {
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO offer(company_id, offer_name, offer_salary, " +
                    "offer_location, offer_domain, job_type, offer_description, post_time, approvedOffer) VALUES (?,?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, offer.getCompanyId());
            preparedStatement.setString(2, offer.getOfferName());
            preparedStatement.setInt(3, offer.getOfferSalary());
            preparedStatement.setString(4, offer.getOfferLocation());
            preparedStatement.setString(5, offer.getOfferDomain());
            preparedStatement.setString(6, offer.getJobType());
            preparedStatement.setString(7, offer.getOfferDescription());
            preparedStatement.setString(8, dateFormatter.format(now));
            preparedStatement.setString(9, String.valueOf(offer.isApprovedOffer()));

            if (preparedStatement.executeUpdate() > 0) {
                return 1;
            } else {
                return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return -1;
    }

    @Override
    public Offer getOfferById(int offerId) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM offer WHERE offer_id=?");
            preparedStatement.setInt(1, offerId);

            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return getOffer();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Offer> getAllOffersByCompany(int companyId) {
        List<Offer> offers = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM offer WHERE company_id=?");
            preparedStatement.setInt(1, companyId);

            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Offer offer = getOffer();
                offers.add(offer);
            }
            return offers;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    //    true for approved offers and false for Unapproved offers
    @Override
    public List<Offer> getAllOffers(boolean approved) {
        List<Offer> offers = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM offer WHERE approvedOffer=?");
            preparedStatement.setString(1, String.valueOf(approved));

            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Offer offer = getOffer();
                offers.add(offer);
            }
            return offers;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    private Offer getOffer() throws SQLException {
        Offer offer = new Offer();
        offer.setOfferId(resultSet.getInt("offer_id"));
        offer.setCompanyId(resultSet.getInt("company_id"));
        offer.setOfferName(resultSet.getString("offer_name"));
        offer.setOfferSalary(resultSet.getInt("offer_salary"));
        offer.setOfferLocation(resultSet.getString("offer_location"));
        offer.setOfferDomain(resultSet.getString("offer_domain"));
        offer.setJobType(resultSet.getString("job_type"));
        offer.setOfferDescription(resultSet.getString("offer_description"));
        offer.setPostTime(resultSet.getString("post_time"));
        offer.setApprovedOffer(Boolean.parseBoolean(resultSet.getString("approvedOffer")));
        return offer;
    }

    @Override
    public void updateOffer(Offer offer) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE offer set offer_name=?, offer_salary=?, " +
                    "offer_location=?, offer_domain=?, job_type=?, offer_description=? WHERE offer_id=?");
            preparedStatement.setString(1, offer.getOfferName());
            preparedStatement.setInt(2, offer.getOfferSalary());
            preparedStatement.setString(3, offer.getOfferLocation());
            preparedStatement.setString(4, offer.getOfferDomain());
            preparedStatement.setString(5, offer.getJobType());
            preparedStatement.setString(6, offer.getOfferDescription());
            preparedStatement.setInt(7, offer.getOfferId());

            if (preparedStatement.executeUpdate() > 0) {
            } else {
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void deleteOffer(int offerId) {
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM offer WHERE offer_id=?");
            preparedStatement.setInt(1, offerId);

            if (preparedStatement.executeUpdate() > 0) {
            } else {
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public int getTotalOffers() {
        try {
            preparedStatement = connection.prepareStatement("SELECT count(*) AS total FROM offer");
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
    @Override
    public int getTotalOffersByCompany(int companyId) {
        try {
            preparedStatement = connection.prepareStatement("SELECT count(*) AS total FROM offer WHERE company_id=?");
            preparedStatement.setInt(1, companyId);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int getTotalInternships() {
        try {
            preparedStatement = connection.prepareStatement("SELECT count(*) AS total FROM offer WHERE job_type ='Internship'");
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
    @Override
    public int getTotalInternshipsByCompany(int companyId) {
        try {
            preparedStatement = connection.prepareStatement("SELECT count(*) AS total FROM offer WHERE job_type ='Internship' AND company_id=?");
            preparedStatement.setInt(1, companyId);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public void approveOffer(int offerId) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE offer SET approvedOffer='true' WHERE offer_id=?");
            preparedStatement.setInt(1, offerId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
