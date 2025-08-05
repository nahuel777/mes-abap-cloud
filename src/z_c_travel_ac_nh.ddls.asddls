@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Consumption'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_C_TRAVEL_AC_NH
  provider contract transactional_query
  as projection on Z_I_TRAVEL_AC_NH
{
  key TravelUuid,
      TravelId,
      @Consumption.valueHelpDefinition: [{ entity.name: '/DMO/I_Agency_StdVH',
                                           entity.element: 'AgencyID',
                                           useForValidation: true }]
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      @Consumption.valueHelpDefinition: [{ entity.name: 'I_CurrencyStdVH',
                                           entity.element: 'Currency',
                                           useForValidation: true }]
      CurrencyCode,
      Description,
      OverallStatus,
      @Semantics.user.createdBy: true
      LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedBy
}
