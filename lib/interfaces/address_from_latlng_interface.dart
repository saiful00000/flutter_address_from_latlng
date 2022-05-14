import 'package:flutter_address_from_latlng/models/address_response.dart';

abstract class AddressFromLatLngInterface {
  /// This method returns an address from given [addressList] if any address
  /// match with the given [addressType] if exist in [addressList]
  ///
  /// if address is not present in [addressList] then return null
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<String> getFormattedAddress({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });

  /// Return premise address if available else returns null
  ///
  /// premise address indicates a named location, usually a building
  /// or collection of buildings with a common name.
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<Address?> getPremiseAddress({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });

  /// Returns street address if available else returns null
  ///
  /// street address indicates a precise street address with street information.
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<Address?> getStreetAddress({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });

  /// Returns route address if available else returns null
  ///
  /// routes address indicates a named route
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<Address?> getDirectionAddress({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });

  /// Return establishment address if available else return null
  ///
  /// ESTABLISHMENT typically indicates a place that has not yet
  /// been categorized.
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<Address?> getEstablishmentAddress({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });

  /// Returns plus_code address if available else returns null
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<Address?> getPlusCodeAddress({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });

  /// Returns NeighborHood address if available else returns null
  ///
  /// NeighborHood address indicate the well known neighborhood hood address
  /// near the given [latitude],[longitude]
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<Address?> getNeighborhoodAddress({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });

  /// Returns the administrative address level 1 information
  /// of provided [latitude], [longitude]
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<Address?> getAdministrativeAddress1({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });

  /// Returns the administrative address level 2 information
  /// of provided [latitude], [longitude]
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<Address?> getAdministrativeAddress2({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });

  /// Returns the administrative address level 3 information
  /// of provided [latitude], [longitude]
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<Address?> getAdministrativeAddress3({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });

  /// return Country Address if available else returns null
  ///
  /// COUNTRY indicates the national political entity,
  /// and is typically the highest order type returned by the Geocoder
  ///
  /// [latitude] is the latitude of desired address
  /// [longitude] is the longitude of desired address
  /// [gApiKey] the api key to get access of google geocoding apis
  Future<Address?> getCountryAddress({
    required double latitude,
    required double longitude,
    required String gApiKey,
  });
}
