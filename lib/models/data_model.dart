class DataModel {
    DataModel({
        required this.status,
        required this.customer,
        required this.data,
        required this.message,
    });

    final int? status;
    final Customer? customer;
    final Data? data;
    final String? message;

    factory DataModel.fromJson(Map<String, dynamic> json){ 
        return DataModel(
            status: json["status"],
            customer: json["customer"] == null ? null : Customer.fromJson(json["customer"]),
            data: json["data"] == null ? null : Data.fromJson(json["data"]),
            message: json["message"],
        );
    }

    Map<String, dynamic> toJson() => {
        "status": status,
        "customer": customer?.toJson(),
        "data": data?.toJson(),
        "message": message,
    };

}

class Customer {
    Customer({
        required this.businessInfo,
        required this.homeLocation,
        required this.badges,
        required this.isCalenderPermissionNeeded,
        required this.alertEmails,
        required this.photoUrl,
        required this.hasWebsite,
        required this.websiteDomainName,
        required this.hasBusiness,
        required this.useBusinessDefault,
        required this.customWebsiteEnabled,
        required this.socialLinks,
        required this.defaultTimeZone,
        required this.userTimeZone,
        required this.emailVerified,
        required this.isPhoneNumberVerified,
        required this.role,
        required this.bio,
        required this.isPremiumUser,
        required this.planString,
        required this.planId,
        required this.planAmount,
        required this.nextStep,
        required this.tokens,
        required this.isDirectoryProfileCreated,
        required this.isBadgeUpdated,
        required this.isCustomDomain,
        required this.createdAt,
        required this.isBusinessInfoSet,
        required this.isConnectedCalendar,
        required this.showDummydata,
        required this.isProfileUpdated,
        required this.isSchdulignLinkUpdated,
        required this.isCostUpdated,
        required this.bgColor,
        required this.textColor,
        required this.softColor,
        required this.isServiceLinked,
        required this.isReviewMeetingLinkSet,
        required this.utmSource,
        required this.utmId,
        required this.isRonMeetingLinkSet,
        required this.isInvoiceConfigsSet,
        required this.isCertified,
        required this.isInsured,
        required this.showFreeSlotsOnly,
        required this.meetingLink,
        required this.googleReviewLink,
        required this.paymentLink,
        required this.isRealEstateOffline,
        required this.isRealEstateOnline,
        required this.isSkippedCalender,
        required this.isRonOnline,
        required this.isMobileGeneral,
        required this.id,
        required this.fullName,
        required this.email,
        required this.uid,
        required this.username,
        required this.pushToken,
        required this.linkedCalenderEmails,
        required this.v,
        required this.stripeId,
        required this.phoneNumber,
    });

    final BusinessInfo? businessInfo;
    final HomeLocation? homeLocation;
    final List<String> badges;
    final bool? isCalenderPermissionNeeded;
    final List<dynamic> alertEmails;
    final String? photoUrl;
    final bool? hasWebsite;
    final String? websiteDomainName;
    final bool? hasBusiness;
    final bool? useBusinessDefault;
    final bool? customWebsiteEnabled;
    final List<dynamic> socialLinks;
    final String? defaultTimeZone;
    final String? userTimeZone;
    final bool? emailVerified;
    final bool? isPhoneNumberVerified;
    final String? role;
    final String? bio;
    final bool? isPremiumUser;
    final dynamic planString;
    final int? planId;
    final int? planAmount;
    final int? nextStep;
    final List<dynamic> tokens;
    final bool? isDirectoryProfileCreated;
    final bool? isBadgeUpdated;
    final bool? isCustomDomain;
    final DateTime? createdAt;
    final bool? isBusinessInfoSet;
    final bool? isConnectedCalendar;
    final bool? showDummydata;
    final bool? isProfileUpdated;
    final bool? isSchdulignLinkUpdated;
    final bool? isCostUpdated;
    final String? bgColor;
    final String? textColor;
    final String? softColor;
    final bool? isServiceLinked;
    final bool? isReviewMeetingLinkSet;
    final dynamic utmSource;
    final dynamic utmId;
    final bool? isRonMeetingLinkSet;
    final bool? isInvoiceConfigsSet;
    final bool? isCertified;
    final bool? isInsured;
    final bool? showFreeSlotsOnly;
    final dynamic meetingLink;
    final dynamic googleReviewLink;
    final dynamic paymentLink;
    final bool? isRealEstateOffline;
    final bool? isRealEstateOnline;
    final bool? isSkippedCalender;
    final bool? isRonOnline;
    final bool? isMobileGeneral;
    final String? id;
    final String? fullName;
    final String? email;
    final String? uid;
    final String? username;
    final List<dynamic> pushToken;
    final List<dynamic> linkedCalenderEmails;
    final int? v;
    final String? stripeId;
    final int? phoneNumber;

    factory Customer.fromJson(Map<String, dynamic> json){ 
        return Customer(
            businessInfo: json["businessInfo"] == null ? null : BusinessInfo.fromJson(json["businessInfo"]),
            homeLocation: json["homeLocation"] == null ? null : HomeLocation.fromJson(json["homeLocation"]),
            badges: json["badges"] == null ? [] : List<String>.from(json["badges"]!.map((x) => x)),
            isCalenderPermissionNeeded: json["isCalenderPermissionNeeded"],
            alertEmails: json["alertEmails"] == null ? [] : List<dynamic>.from(json["alertEmails"]!.map((x) => x)),
            photoUrl: json["photoURL"],
            hasWebsite: json["hasWebsite"],
            websiteDomainName: json["websiteDomainName"],
            hasBusiness: json["hasBusiness"],
            useBusinessDefault: json["useBusinessDefault"],
            customWebsiteEnabled: json["customWebsiteEnabled"],
            socialLinks: json["socialLinks"] == null ? [] : List<dynamic>.from(json["socialLinks"]!.map((x) => x)),
            defaultTimeZone: json["defaultTimeZone"],
            userTimeZone: json["userTimeZone"],
            emailVerified: json["emailVerified"],
            isPhoneNumberVerified: json["isPhoneNumberVerified"],
            role: json["role"],
            bio: json["bio"],
            isPremiumUser: json["isPremiumUser"],
            planString: json["planString"],
            planId: json["planId"],
            planAmount: json["planAmount"],
            nextStep: json["nextStep"],
            tokens: json["tokens"] == null ? [] : List<dynamic>.from(json["tokens"]!.map((x) => x)),
            isDirectoryProfileCreated: json["isDirectoryProfileCreated"],
            isBadgeUpdated: json["isBadgeUpdated"],
            isCustomDomain: json["isCustomDomain"],
            createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
            isBusinessInfoSet: json["isBusinessInfoSet"],
            isConnectedCalendar: json["isConnectedCalendar"],
            showDummydata: json["showDummydata"],
            isProfileUpdated: json["isProfileUpdated"],
            isSchdulignLinkUpdated: json["isSchdulignLinkUpdated"],
            isCostUpdated: json["isCostUpdated"],
            bgColor: json["bgColor"],
            textColor: json["textColor"],
            softColor: json["softColor"],
            isServiceLinked: json["isServiceLinked"],
            isReviewMeetingLinkSet: json["isReviewMeetingLinkSet"],
            utmSource: json["utmSource"],
            utmId: json["utmId"],
            isRonMeetingLinkSet: json["isRONMeetingLinkSet"],
            isInvoiceConfigsSet: json["isInvoiceConfigsSet"],
            isCertified: json["isCertified"],
            isInsured: json["isInsured"],
            showFreeSlotsOnly: json["showFreeSlotsOnly"],
            meetingLink: json["meetingLink"],
            googleReviewLink: json["GoogleReviewLink"],
            paymentLink: json["paymentLink"],
            isRealEstateOffline: json["isRealEstate_OFFLINE"],
            isRealEstateOnline: json["isRealEstate_ONLINE"],
            isSkippedCalender: json["isSkippedCalender"],
            isRonOnline: json["isRON_ONLINE"],
            isMobileGeneral: json["isMOBILE_GENERAL"],
            id: json["_id"],
            fullName: json["fullName"],
            email: json["email"],
            uid: json["uid"],
            username: json["username"],
            pushToken: json["pushToken"] == null ? [] : List<dynamic>.from(json["pushToken"]!.map((x) => x)),
            linkedCalenderEmails: json["linkedCalenderEmails"] == null ? [] : List<dynamic>.from(json["linkedCalenderEmails"]!.map((x) => x)),
            v: json["__v"],
            stripeId: json["stripeId"],
            phoneNumber: json["phoneNumber"],
        );
    }

    Map<String, dynamic> toJson() => {
        "businessInfo": businessInfo?.toJson(),
        "homeLocation": homeLocation?.toJson(),
        "badges": badges.map((x) => x).toList(),
        "isCalenderPermissionNeeded": isCalenderPermissionNeeded,
        "alertEmails": alertEmails.map((x) => x).toList(),
        "photoURL": photoUrl,
        "hasWebsite": hasWebsite,
        "websiteDomainName": websiteDomainName,
        "hasBusiness": hasBusiness,
        "useBusinessDefault": useBusinessDefault,
        "customWebsiteEnabled": customWebsiteEnabled,
        "socialLinks": socialLinks.map((x) => x).toList(),
        "defaultTimeZone": defaultTimeZone,
        "userTimeZone": userTimeZone,
        "emailVerified": emailVerified,
        "isPhoneNumberVerified": isPhoneNumberVerified,
        "role": role,
        "bio": bio,
        "isPremiumUser": isPremiumUser,
        "planString": planString,
        "planId": planId,
        "planAmount": planAmount,
        "nextStep": nextStep,
        "tokens": tokens.map((x) => x).toList(),
        "isDirectoryProfileCreated": isDirectoryProfileCreated,
        "isBadgeUpdated": isBadgeUpdated,
        "isCustomDomain": isCustomDomain,
        "createdAt": createdAt?.toIso8601String(),
        "isBusinessInfoSet": isBusinessInfoSet,
        "isConnectedCalendar": isConnectedCalendar,
        "showDummydata": showDummydata,
        "isProfileUpdated": isProfileUpdated,
        "isSchdulignLinkUpdated": isSchdulignLinkUpdated,
        "isCostUpdated": isCostUpdated,
        "bgColor": bgColor,
        "textColor": textColor,
        "softColor": softColor,
        "isServiceLinked": isServiceLinked,
        "isReviewMeetingLinkSet": isReviewMeetingLinkSet,
        "utmSource": utmSource,
        "utmId": utmId,
        "isRONMeetingLinkSet": isRonMeetingLinkSet,
        "isInvoiceConfigsSet": isInvoiceConfigsSet,
        "isCertified": isCertified,
        "isInsured": isInsured,
        "showFreeSlotsOnly": showFreeSlotsOnly,
        "meetingLink": meetingLink,
        "GoogleReviewLink": googleReviewLink,
        "paymentLink": paymentLink,
        "isRealEstate_OFFLINE": isRealEstateOffline,
        "isRealEstate_ONLINE": isRealEstateOnline,
        "isSkippedCalender": isSkippedCalender,
        "isRON_ONLINE": isRonOnline,
        "isMOBILE_GENERAL": isMobileGeneral,
        "_id": id,
        "fullName": fullName,
        "email": email,
        "uid": uid,
        "username": username,
        "pushToken": pushToken.map((x) => x).toList(),
        "linkedCalenderEmails": linkedCalenderEmails.map((x) => x).toList(),
        "__v": v,
        "stripeId": stripeId,
        "phoneNumber": phoneNumber,
    };

}

class BusinessInfo {
    BusinessInfo({
        required this.businessLocation,
        required this.businessImageUrl,
        required this.businessName,
        required this.businessEmail,
        required this.businessNumber,
        required this.businessTaxCode,
        required this.businessFax,
    });

    final BusinessLocation? businessLocation;
    final String? businessImageUrl;
    final String? businessName;
    final String? businessEmail;
    final String? businessNumber;
    final String? businessTaxCode;
    final String? businessFax;

    factory BusinessInfo.fromJson(Map<String, dynamic> json){ 
        return BusinessInfo(
            businessLocation: json["businessLocation"] == null ? null : BusinessLocation.fromJson(json["businessLocation"]),
            businessImageUrl: json["businessImageURL"],
            businessName: json["businessName"],
            businessEmail: json["businessEmail"],
            businessNumber: json["businessNumber"],
            businessTaxCode: json["businessTaxCode"],
            businessFax: json["businessFax"],
        );
    }

    Map<String, dynamic> toJson() => {
        "businessLocation": businessLocation?.toJson(),
        "businessImageURL": businessImageUrl,
        "businessName": businessName,
        "businessEmail": businessEmail,
        "businessNumber": businessNumber,
        "businessTaxCode": businessTaxCode,
        "businessFax": businessFax,
    };

}

class BusinessLocation {
    BusinessLocation({
        required this.country,
        required this.completeAddress,
        required this.lat,
        required this.lon,
        required this.zip,
        required this.city,
        required this.area,
        required this.streetAddress,
        required this.placeId,
    });

    final String? country;
    final String? completeAddress;
    final dynamic lat;
    final dynamic lon;
    final int? zip;
    final String? city;
    final String? area;
    final String? streetAddress;
    final String? placeId;

    factory BusinessLocation.fromJson(Map<String, dynamic> json){ 
        return BusinessLocation(
            country: json["country"],
            completeAddress: json["completeAddress"],
            lat: json["lat"],
            lon: json["lon"],
            zip: json["zip"],
            city: json["city"],
            area: json["area"],
            streetAddress: json["streetAddress"],
            placeId: json["placeId"],
        );
    }

    Map<String, dynamic> toJson() => {
        "country": country,
        "completeAddress": completeAddress,
        "lat": lat,
        "lon": lon,
        "zip": zip,
        "city": city,
        "area": area,
        "streetAddress": streetAddress,
        "placeId": placeId,
    };

}

class HomeLocation {
    HomeLocation({
        required this.completeAddress,
        required this.zip,
        required this.lat,
        required this.lon,
        required this.city,
        required this.area,
        required this.state,
        required this.streetAddress,
        required this.placeId,
    });

    final String? completeAddress;
    final String? zip;
    final double? lat;
    final double? lon;
    final String? city;
    final String? area;
    final String? state;
    final String? streetAddress;
    final String? placeId;

    factory HomeLocation.fromJson(Map<String, dynamic> json){ 
        return HomeLocation(
            completeAddress: json["completeAddress"],
            zip: json["zip"],
            lat: json["lat"],
            lon: json["lon"],
            city: json["city"],
            area: json["area"],
            state: json["state"],
            streetAddress: json["streetAddress"],
            placeId: json["placeId"],
        );
    }

    Map<String, dynamic> toJson() => {
        "completeAddress": completeAddress,
        "zip": zip,
        "lat": lat,
        "lon": lon,
        "city": city,
        "area": area,
        "state": state,
        "streetAddress": streetAddress,
        "placeId": placeId,
    };

}

class Data {
    Data({
        required this.quickActions,
        required this.invoiceBreakups,
        required this.invoiceGraph,
        required this.serviceBreakups,
        required this.upcomingApts,
        required this.contactsCount,
        required this.signerCount,
        required this.customerCount,
        required this.companiesCount,
        required this.todaysAppointment,
        required this.availableServices,
        required this.companiesList,
        required this.suggestedExpenses,
        required this.user,
        required this.get5Tops,
        required this.expenseCategories,
        required this.profileConfigs,
        required this.masterServices,
    });

    final QuickActions? quickActions;
    final InvoiceBreakups? invoiceBreakups;
    final dynamic invoiceGraph;
    final ServiceBreakups? serviceBreakups;
    final List<UpcomingApt> upcomingApts;
    final int? contactsCount;
    final int? signerCount;
    final int? customerCount;
    final int? companiesCount;
    final List<dynamic> todaysAppointment;
    final AvailableServices? availableServices;
    final List<CompaniesList> companiesList;
    final List<SuggestedExpense> suggestedExpenses;
    final Customer? user;
    final Get5Tops? get5Tops;
    final List<ExpenseCategory> expenseCategories;
    final ProfileConfigs? profileConfigs;
    final MasterServices? masterServices;

    factory Data.fromJson(Map<String, dynamic> json){ 
        return Data(
            quickActions: json["quickActions"] == null ? null : QuickActions.fromJson(json["quickActions"]),
            invoiceBreakups: json["invoiceBreakups"] == null ? null : InvoiceBreakups.fromJson(json["invoiceBreakups"]),
            invoiceGraph: json["invoiceGraph"],
            serviceBreakups: json["serviceBreakups"] == null ? null : ServiceBreakups.fromJson(json["serviceBreakups"]),
            upcomingApts: json["upcomingApts"] == null ? [] : List<UpcomingApt>.from(json["upcomingApts"]!.map((x) => UpcomingApt.fromJson(x))),
            contactsCount: json["contactsCount"],
            signerCount: json["signerCount"],
            customerCount: json["customerCount"],
            companiesCount: json["companiesCount"],
            todaysAppointment: json["todaysAppointment"] == null ? [] : List<dynamic>.from(json["todaysAppointment"]!.map((x) => x)),
            availableServices: json["availableServices"] == null ? null : AvailableServices.fromJson(json["availableServices"]),
            companiesList: json["companiesList"] == null ? [] : List<CompaniesList>.from(json["companiesList"]!.map((x) => CompaniesList.fromJson(x))),
            suggestedExpenses: json["suggestedExpenses"] == null ? [] : List<SuggestedExpense>.from(json["suggestedExpenses"]!.map((x) => SuggestedExpense.fromJson(x))),
            user: json["user"] == null ? null : Customer.fromJson(json["user"]),
            get5Tops: json["get5Tops"] == null ? null : Get5Tops.fromJson(json["get5Tops"]),
            expenseCategories: json["expenseCategories"] == null ? [] : List<ExpenseCategory>.from(json["expenseCategories"]!.map((x) => ExpenseCategory.fromJson(x))),
            profileConfigs: json["profileConfigs"] == null ? null : ProfileConfigs.fromJson(json["profileConfigs"]),
            masterServices: json["masterServices"] == null ? null : MasterServices.fromJson(json["masterServices"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "quickActions": quickActions?.toJson(),
        "invoiceBreakups": invoiceBreakups?.toJson(),
        "invoiceGraph": invoiceGraph,
        "serviceBreakups": serviceBreakups?.toJson(),
        "upcomingApts": upcomingApts.map((x) => x?.toJson()).toList(),
        "contactsCount": contactsCount,
        "signerCount": signerCount,
        "customerCount": customerCount,
        "companiesCount": companiesCount,
        "todaysAppointment": todaysAppointment.map((x) => x).toList(),
        "availableServices": availableServices?.toJson(),
        "companiesList": companiesList.map((x) => x?.toJson()).toList(),
        "suggestedExpenses": suggestedExpenses.map((x) => x?.toJson()).toList(),
        "user": user?.toJson(),
        "get5Tops": get5Tops?.toJson(),
        "expenseCategories": expenseCategories.map((x) => x?.toJson()).toList(),
        "profileConfigs": profileConfigs?.toJson(),
        "masterServices": masterServices?.toJson(),
    };

}

class AvailableServices {
    AvailableServices({
        required this.id,
        required this.notaryId,
        required this.services,
        required this.v,
    });

    final String? id;
    final String? notaryId;
    final List<Service> services;
    final int? v;

    factory AvailableServices.fromJson(Map<String, dynamic> json){ 
        return AvailableServices(
            id: json["_id"],
            notaryId: json["notaryId"],
            services: json["services"] == null ? [] : List<Service>.from(json["services"]!.map((x) => Service.fromJson(x))),
            v: json["__v"],
        );
    }

    Map<String, dynamic> toJson() => {
        "_id": id,
        "notaryId": notaryId,
        "services": services.map((x) => x?.toJson()).toList(),
        "__v": v,
    };

}

class Service {
    Service({
        required this.paymentLink,
        required this.serviceId,
        required this.createdOn,
        required this.id,
        required this.serviceName,
        required this.description,
        required this.timeToBlockinMins,
        required this.manualPricingFlag,
        required this.cost,
        required this.timeBlockBeforeAfter,
        required this.serviceKey,
    });

    final dynamic paymentLink;
    final String? serviceId;
    final DateTime? createdOn;
    final String? id;
    final String? serviceName;
    final String? description;
    final int? timeToBlockinMins;
    final bool? manualPricingFlag;
    final int? cost;
    final int? timeBlockBeforeAfter;
    final String? serviceKey;

    factory Service.fromJson(Map<String, dynamic> json){ 
        return Service(
            paymentLink: json["paymentLink"],
            serviceId: json["serviceId"],
            createdOn: DateTime.tryParse(json["createdOn"] ?? ""),
            id: json["_id"],
            serviceName: json["serviceName"],
            description: json["description"],
            timeToBlockinMins: json["timeToBlockinMins"],
            manualPricingFlag: json["manualPricingFlag"],
            cost: json["cost"],
            timeBlockBeforeAfter: json["timeBlockBeforeAfter"],
            serviceKey: json["serviceKey"],
        );
    }

    Map<String, dynamic> toJson() => {
        "paymentLink": paymentLink,
        "serviceId": serviceId,
        "createdOn": createdOn?.toIso8601String(),
        "_id": id,
        "serviceName": serviceName,
        "description": description,
        "timeToBlockinMins": timeToBlockinMins,
        "manualPricingFlag": manualPricingFlag,
        "cost": cost,
        "timeBlockBeforeAfter": timeBlockBeforeAfter,
        "serviceKey": serviceKey,
    };

}

class CompaniesList {
    CompaniesList({
        required this.photoUrl,
        required this.id,
        required this.name,
    });

    final String? photoUrl;
    final String? id;
    final String? name;

    factory CompaniesList.fromJson(Map<String, dynamic> json){ 
        return CompaniesList(
            photoUrl: json["photoURL"],
            id: json["_id"],
            name: json["name"],
        );
    }

    Map<String, dynamic> toJson() => {
        "photoURL": photoUrl,
        "_id": id,
        "name": name,
    };

}

class ExpenseCategory {
    ExpenseCategory({
        required this.createdBy,
        required this.createdAt,
        required this.id,
        required this.expenseName,
        required this.orderBy,
        required this.maxAmountDeductable,
        required this.irsSchedule,
    });

    final String? createdBy;
    final DateTime? createdAt;
    final String? id;
    final String? expenseName;
    final int? orderBy;
    final int? maxAmountDeductable;
    final List<IrsSchedule> irsSchedule;

    factory ExpenseCategory.fromJson(Map<String, dynamic> json){ 
        return ExpenseCategory(
            createdBy: json["createdBy"],
            createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
            id: json["_id"],
            expenseName: json["expenseName"],
            orderBy: json["orderBy"],
            maxAmountDeductable: json["maxAmountDeductable"],
            irsSchedule: json["IRS_Schedule"] == null ? [] : List<IrsSchedule>.from(json["IRS_Schedule"]!.map((x) => IrsSchedule.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "createdBy": createdBy,
        "createdAt": createdAt?.toIso8601String(),
        "_id": id,
        "expenseName": expenseName,
        "orderBy": orderBy,
        "maxAmountDeductable": maxAmountDeductable,
        "IRS_Schedule": irsSchedule.map((x) => x?.toJson()).toList(),
    };

}

class IrsSchedule {
    IrsSchedule({
        required this.id,
        required this.businessType,
    });

    final String? id;
    final String? businessType;

    factory IrsSchedule.fromJson(Map<String, dynamic> json){ 
        return IrsSchedule(
            id: json["_id"],
            businessType: json["businessType"],
        );
    }

    Map<String, dynamic> toJson() => {
        "_id": id,
        "businessType": businessType,
    };

}

class Get5Tops {
    Get5Tops({
        required this.top5Signer,
        required this.top5Customer,
        required this.top5Company,
    });

    final Top5Signer? top5Signer;
    final Top5Customer? top5Customer;
    final Top5Company? top5Company;

    factory Get5Tops.fromJson(Map<String, dynamic> json){ 
        return Get5Tops(
            top5Signer: json["top_5Signer"] == null ? null : Top5Signer.fromJson(json["top_5Signer"]),
            top5Customer: json["top_5_customer"] == null ? null : Top5Customer.fromJson(json["top_5_customer"]),
            top5Company: json["top_5_company"] == null ? null : Top5Company.fromJson(json["top_5_company"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "top_5Signer": top5Signer?.toJson(),
        "top_5_customer": top5Customer?.toJson(),
        "top_5_company": top5Company?.toJson(),
    };

}

class Top5Company {
    Top5Company({
        required this.currentMonth,
        required this.allTime,
    });

    final Top5CompanyAllTime? currentMonth;
    final Top5CompanyAllTime? allTime;

    factory Top5Company.fromJson(Map<String, dynamic> json){ 
        return Top5Company(
            currentMonth: json["currentMonth"] == null ? null : Top5CompanyAllTime.fromJson(json["currentMonth"]),
            allTime: json["AllTime"] == null ? null : Top5CompanyAllTime.fromJson(json["AllTime"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "currentMonth": currentMonth?.toJson(),
        "AllTime": allTime?.toJson(),
    };

}

class Top5CompanyAllTime {
    Top5CompanyAllTime({
        required this.firstAmerican,
        required this.titleV,
        required this.naa,
    });

    final int? firstAmerican;
    final int? titleV;
    final int? naa;

    factory Top5CompanyAllTime.fromJson(Map<String, dynamic> json){ 
        return Top5CompanyAllTime(
            firstAmerican: json["First American"],
            titleV: json["Title V"],
            naa: json["naa"],
        );
    }

    Map<String, dynamic> toJson() => {
        "First American": firstAmerican,
        "Title V": titleV,
        "naa": naa,
    };

}

class Top5Customer {
    Top5Customer({
        required this.currentMonth,
        required this.allTime,
    });

    final Top5CustomerAllTime? currentMonth;
    final Top5CustomerAllTime? allTime;

    factory Top5Customer.fromJson(Map<String, dynamic> json){ 
        return Top5Customer(
            currentMonth: json["currentMonth"] == null ? null : Top5CustomerAllTime.fromJson(json["currentMonth"]),
            allTime: json["AllTime"] == null ? null : Top5CustomerAllTime.fromJson(json["AllTime"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "currentMonth": currentMonth?.toJson(),
        "AllTime": allTime?.toJson(),
    };

}

class Top5CustomerAllTime {
    Top5CustomerAllTime({
        required this.peterAndrews,
        required this.elonMusk,
        required this.johny,
    });

    final int? peterAndrews;
    final int? elonMusk;
    final int? johny;

    factory Top5CustomerAllTime.fromJson(Map<String, dynamic> json){ 
        return Top5CustomerAllTime(
            peterAndrews: json["Peter Andrews"],
            elonMusk: json["Elon Musk "],
            johny: json["johny"],
        );
    }

    Map<String, dynamic> toJson() => {
        "Peter Andrews": peterAndrews,
        "Elon Musk ": elonMusk,
        "johny": johny,
    };

}

class Top5Signer {
    Top5Signer({
        required this.currentMonth,
        required this.allTime,
    });

    final Top5SignerAllTime? currentMonth;
    final Top5SignerAllTime? allTime;

    factory Top5Signer.fromJson(Map<String, dynamic> json){ 
        return Top5Signer(
            currentMonth: json["currentMonth"] == null ? null : Top5SignerAllTime.fromJson(json["currentMonth"]),
            allTime: json["AllTime"] == null ? null : Top5SignerAllTime.fromJson(json["AllTime"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "currentMonth": currentMonth?.toJson(),
        "AllTime": allTime?.toJson(),
    };

}

class Top5SignerAllTime {
    Top5SignerAllTime({
        required this.test,
        required this.borun,
    });

    final int? test;
    final int? borun;

    factory Top5SignerAllTime.fromJson(Map<String, dynamic> json){ 
        return Top5SignerAllTime(
            test: json["Test"],
            borun: json["Borun"],
        );
    }

    Map<String, dynamic> toJson() => {
        "Test": test,
        "Borun": borun,
    };

}

class InvoiceBreakups {
    InvoiceBreakups({
        required this.all,
        required this.paid,
        required this.due,
        required this.cancel,
        required this.overDue,
        required this.balancePending,
        required this.overAmount,
        required this.uncollectable,
    });

    final All? all;
    final All? paid;
    final All? due;
    final All? cancel;
    final All? overDue;
    final All? balancePending;
    final All? overAmount;
    final All? uncollectable;

    factory InvoiceBreakups.fromJson(Map<String, dynamic> json){ 
        return InvoiceBreakups(
            all: json["all"] == null ? null : All.fromJson(json["all"]),
            paid: json["paid"] == null ? null : All.fromJson(json["paid"]),
            due: json["due"] == null ? null : All.fromJson(json["due"]),
            cancel: json["cancel"] == null ? null : All.fromJson(json["cancel"]),
            overDue: json["overDue"] == null ? null : All.fromJson(json["overDue"]),
            balancePending: json["balancePending"] == null ? null : All.fromJson(json["balancePending"]),
            overAmount: json["overAmount"] == null ? null : All.fromJson(json["overAmount"]),
            uncollectable: json["uncollectable"] == null ? null : All.fromJson(json["uncollectable"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "all": all?.toJson(),
        "paid": paid?.toJson(),
        "due": due?.toJson(),
        "cancel": cancel?.toJson(),
        "overDue": overDue?.toJson(),
        "balancePending": balancePending?.toJson(),
        "overAmount": overAmount?.toJson(),
        "uncollectable": uncollectable?.toJson(),
    };

}

class All {
    All({
        required this.count,
        required this.value,
    });

    final int? count;
    final int? value;

    factory All.fromJson(Map<String, dynamic> json){ 
        return All(
            count: json["count"],
            value: json["value"],
        );
    }

    Map<String, dynamic> toJson() => {
        "count": count,
        "value": value,
    };

}

class MasterServices {
    MasterServices({
        required this.lsaOffline,
        required this.lsaOfflineInhouse,
        required this.lsaOnline,
        required this.genOffline,
        required this.genOnline,
        required this.others,
    });

    final List<GenOfflineElement> lsaOffline;
    final List<GenOfflineElement> lsaOfflineInhouse;
    final List<GenOfflineElement> lsaOnline;
    final List<GenOfflineElement> genOffline;
    final List<GenOfflineElement> genOnline;
    final List<dynamic> others;

    factory MasterServices.fromJson(Map<String, dynamic> json){ 
        return MasterServices(
            lsaOffline: json["LSA_OFFLINE"] == null ? [] : List<GenOfflineElement>.from(json["LSA_OFFLINE"]!.map((x) => GenOfflineElement.fromJson(x))),
            lsaOfflineInhouse: json["LSA_OFFLINE_INHOUSE"] == null ? [] : List<GenOfflineElement>.from(json["LSA_OFFLINE_INHOUSE"]!.map((x) => GenOfflineElement.fromJson(x))),
            lsaOnline: json["LSA_ONLINE"] == null ? [] : List<GenOfflineElement>.from(json["LSA_ONLINE"]!.map((x) => GenOfflineElement.fromJson(x))),
            genOffline: json["GEN_OFFLINE"] == null ? [] : List<GenOfflineElement>.from(json["GEN_OFFLINE"]!.map((x) => GenOfflineElement.fromJson(x))),
            genOnline: json["GEN_ONLINE"] == null ? [] : List<GenOfflineElement>.from(json["GEN_ONLINE"]!.map((x) => GenOfflineElement.fromJson(x))),
            others: json["OTHERS"] == null ? [] : List<dynamic>.from(json["OTHERS"]!.map((x) => x)),
        );
    }

    Map<String, dynamic> toJson() => {
        "LSA_OFFLINE": lsaOffline.map((x) => x?.toJson()).toList(),
        "LSA_OFFLINE_INHOUSE": lsaOfflineInhouse.map((x) => x?.toJson()).toList(),
        "LSA_ONLINE": lsaOnline.map((x) => x?.toJson()).toList(),
        "GEN_OFFLINE": genOffline.map((x) => x?.toJson()).toList(),
        "GEN_ONLINE": genOnline.map((x) => x?.toJson()).toList(),
        "OTHERS": others.map((x) => x).toList(),
    };

}

class GenOfflineElement {
    GenOfflineElement({
        required this.serviceName,
        required this.description,
        required this.timeToBlockinMins,
        required this.manualPricingFlag,
        required this.paymentLink,
        required this.cost,
        required this.timeBlockBeforeAfter,
        required this.serviceId,
        required this.createdOn,
    });

    final String? serviceName;
    final String? description;
    final int? timeToBlockinMins;
    final bool? manualPricingFlag;
    final dynamic paymentLink;
    final int? cost;
    final int? timeBlockBeforeAfter;
    final String? serviceId;
    final DateTime? createdOn;

    factory GenOfflineElement.fromJson(Map<String, dynamic> json){ 
        return GenOfflineElement(
            serviceName: json["serviceName"],
            description: json["description"],
            timeToBlockinMins: json["timeToBlockinMins"],
            manualPricingFlag: json["manualPricingFlag"],
            paymentLink: json["paymentLink"],
            cost: json["cost"],
            timeBlockBeforeAfter: json["timeBlockBeforeAfter"],
            serviceId: json["serviceId"],
            createdOn: DateTime.tryParse(json["createdOn"] ?? ""),
        );
    }

    Map<String, dynamic> toJson() => {
        "serviceName": serviceName,
        "description": description,
        "timeToBlockinMins": timeToBlockinMins,
        "manualPricingFlag": manualPricingFlag,
        "paymentLink": paymentLink,
        "cost": cost,
        "timeBlockBeforeAfter": timeBlockBeforeAfter,
        "serviceId": serviceId,
        "createdOn": createdOn?.toIso8601String(),
    };

}

class ProfileConfigs {
    ProfileConfigs({
        required this.perMileCost,
        required this.notarialActsCostDefault,
        required this.categories,
        required this.baseNotarisationCostRon,
        required this.extraSignersCostRon,
        required this.extraWitnessCostRon,
        required this.extraSignatureCostRon,
        required this.firstActsCostRon,
        required this.secondActsCostRon,
        required this.oneSignatureCostRon,
        required this.twoSignatureCostRon,
        required this.threeSignatureCostRon,
        required this.baseNotarisationCostMobileGeneral,
        required this.extraSignersCostMobileGeneral,
        required this.extraWitnessCostMobileGeneral,
        required this.extraSignatureCostMobileGeneral,
        required this.oneSignatureCostMobileGeneral,
        required this.twoSignatureCostMobileGeneral,
        required this.threeSignatureCostMobileGeneral,
        required this.firstActsCostGeneral,
        required this.secondActsCostGeneral,
        required this.ackCost,
        required this.juratCost,
        required this.verbal,
        required this.extraTravelFee,
        required this.afterHourFee,
        required this.id,
        required this.meetingLink,
        required this.googleRequestReviewLink,
        required this.state,
        required this.user,
        required this.v,
    });

    final double? perMileCost;
    final int? notarialActsCostDefault;
    final List<dynamic> categories;
    final int? baseNotarisationCostRon;
    final int? extraSignersCostRon;
    final int? extraWitnessCostRon;
    final double? extraSignatureCostRon;
    final int? firstActsCostRon;
    final int? secondActsCostRon;
    final int? oneSignatureCostRon;
    final int? twoSignatureCostRon;
    final int? threeSignatureCostRon;
    final int? baseNotarisationCostMobileGeneral;
    final int? extraSignersCostMobileGeneral;
    final int? extraWitnessCostMobileGeneral;
    final double? extraSignatureCostMobileGeneral;
    final int? oneSignatureCostMobileGeneral;
    final int? twoSignatureCostMobileGeneral;
    final int? threeSignatureCostMobileGeneral;
    final int? firstActsCostGeneral;
    final int? secondActsCostGeneral;
    final int? ackCost;
    final int? juratCost;
    final int? verbal;
    final int? extraTravelFee;
    final int? afterHourFee;
    final String? id;
    final dynamic meetingLink;
    final dynamic googleRequestReviewLink;
    final String? state;
    final String? user;
    final int? v;

    factory ProfileConfigs.fromJson(Map<String, dynamic> json){ 
        return ProfileConfigs(
            perMileCost: json["perMileCost"],
            notarialActsCostDefault: json["notarialActsCostDefault"],
            categories: json["categories"] == null ? [] : List<dynamic>.from(json["categories"]!.map((x) => x)),
            baseNotarisationCostRon: json["baseNotarisationCost_RON"],
            extraSignersCostRon: json["extraSignersCost_RON"],
            extraWitnessCostRon: json["extraWitnessCost_RON"],
            extraSignatureCostRon: json["extraSignatureCost_RON"],
            firstActsCostRon: json["firstActsCost_RON"],
            secondActsCostRon: json["secondActsCost_RON"],
            oneSignatureCostRon: json["one_signatureCost_RON"],
            twoSignatureCostRon: json["two_signatureCost_RON"],
            threeSignatureCostRon: json["three_signatureCost_RON"],
            baseNotarisationCostMobileGeneral: json["baseNotarisationCost_MOBILE_GENERAL"],
            extraSignersCostMobileGeneral: json["extraSignersCost_MOBILE_GENERAL"],
            extraWitnessCostMobileGeneral: json["extraWitnessCost_MOBILE_GENERAL"],
            extraSignatureCostMobileGeneral: json["extraSignatureCost_MOBILE_GENERAL"],
            oneSignatureCostMobileGeneral: json["one_signatureCost_MOBILE_GENERAL"],
            twoSignatureCostMobileGeneral: json["two_signatureCost_MOBILE_GENERAL"],
            threeSignatureCostMobileGeneral: json["three_signatureCost_MOBILE_GENERAL"],
            firstActsCostGeneral: json["firstActsCost_GENERAL"],
            secondActsCostGeneral: json["secondActsCost_GENERAL"],
            ackCost: json["ackCost"],
            juratCost: json["juratCost"],
            verbal: json["verbal"],
            extraTravelFee: json["extraTravelFee"],
            afterHourFee: json["afterHourFee"],
            id: json["_id"],
            meetingLink: json["meetingLink"],
            googleRequestReviewLink: json["GoogleRequestReviewLink"],
            state: json["state"],
            user: json["user"],
            v: json["__v"],
        );
    }

    Map<String, dynamic> toJson() => {
        "perMileCost": perMileCost,
        "notarialActsCostDefault": notarialActsCostDefault,
        "categories": categories.map((x) => x).toList(),
        "baseNotarisationCost_RON": baseNotarisationCostRon,
        "extraSignersCost_RON": extraSignersCostRon,
        "extraWitnessCost_RON": extraWitnessCostRon,
        "extraSignatureCost_RON": extraSignatureCostRon,
        "firstActsCost_RON": firstActsCostRon,
        "secondActsCost_RON": secondActsCostRon,
        "one_signatureCost_RON": oneSignatureCostRon,
        "two_signatureCost_RON": twoSignatureCostRon,
        "three_signatureCost_RON": threeSignatureCostRon,
        "baseNotarisationCost_MOBILE_GENERAL": baseNotarisationCostMobileGeneral,
        "extraSignersCost_MOBILE_GENERAL": extraSignersCostMobileGeneral,
        "extraWitnessCost_MOBILE_GENERAL": extraWitnessCostMobileGeneral,
        "extraSignatureCost_MOBILE_GENERAL": extraSignatureCostMobileGeneral,
        "one_signatureCost_MOBILE_GENERAL": oneSignatureCostMobileGeneral,
        "two_signatureCost_MOBILE_GENERAL": twoSignatureCostMobileGeneral,
        "three_signatureCost_MOBILE_GENERAL": threeSignatureCostMobileGeneral,
        "firstActsCost_GENERAL": firstActsCostGeneral,
        "secondActsCost_GENERAL": secondActsCostGeneral,
        "ackCost": ackCost,
        "juratCost": juratCost,
        "verbal": verbal,
        "extraTravelFee": extraTravelFee,
        "afterHourFee": afterHourFee,
        "_id": id,
        "meetingLink": meetingLink,
        "GoogleRequestReviewLink": googleRequestReviewLink,
        "state": state,
        "user": user,
        "__v": v,
    };

}

class QuickActions {
    QuickActions({
        required this.mileage,
        required this.invoiceUdpateNeeded,
        required this.notarialActsInputNeeded,
        required this.noExpenseEntry,
        required this.completeMarkNeeded,
    });

    final int? mileage;
    final int? invoiceUdpateNeeded;
    final int? notarialActsInputNeeded;
    final int? noExpenseEntry;
    final int? completeMarkNeeded;

    factory QuickActions.fromJson(Map<String, dynamic> json){ 
        return QuickActions(
            mileage: json["MILEAGE"],
            invoiceUdpateNeeded: json["INVOICE_UDPATE_NEEDED"],
            notarialActsInputNeeded: json["NOTARIAL_ACTS_INPUT_NEEDED"],
            noExpenseEntry: json["NO_EXPENSE_ENTRY"],
            completeMarkNeeded: json["COMPLETE_MARK_NEEDED"],
        );
    }

    Map<String, dynamic> toJson() => {
        "MILEAGE": mileage,
        "INVOICE_UDPATE_NEEDED": invoiceUdpateNeeded,
        "NOTARIAL_ACTS_INPUT_NEEDED": notarialActsInputNeeded,
        "NO_EXPENSE_ENTRY": noExpenseEntry,
        "COMPLETE_MARK_NEEDED": completeMarkNeeded,
    };

}

class ServiceBreakups {
    ServiceBreakups({
        required this.lsaOnline,
        required this.lsaOffline,
        required this.genOnline,
        required this.genOffline,
        required this.others,
    });

    final GenOfflineClass? lsaOnline;
    final GenOfflineClass? lsaOffline;
    final GenOfflineClass? genOnline;
    final GenOfflineClass? genOffline;
    final GenOfflineClass? others;

    factory ServiceBreakups.fromJson(Map<String, dynamic> json){ 
        return ServiceBreakups(
            lsaOnline: json["lsaOnline"] == null ? null : GenOfflineClass.fromJson(json["lsaOnline"]),
            lsaOffline: json["lsaOffline"] == null ? null : GenOfflineClass.fromJson(json["lsaOffline"]),
            genOnline: json["genOnline"] == null ? null : GenOfflineClass.fromJson(json["genOnline"]),
            genOffline: json["genOffline"] == null ? null : GenOfflineClass.fromJson(json["genOffline"]),
            others: json["others"] == null ? null : GenOfflineClass.fromJson(json["others"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "lsaOnline": lsaOnline?.toJson(),
        "lsaOffline": lsaOffline?.toJson(),
        "genOnline": genOnline?.toJson(),
        "genOffline": genOffline?.toJson(),
        "others": others?.toJson(),
    };

}

class GenOfflineClass {
    GenOfflineClass({
        required this.count,
        required this.cost,
    });

    final int? count;
    final int? cost;

    factory GenOfflineClass.fromJson(Map<String, dynamic> json){ 
        return GenOfflineClass(
            count: json["count"],
            cost: json["cost"],
        );
    }

    Map<String, dynamic> toJson() => {
        "count": count,
        "cost": cost,
    };

}

class SuggestedExpense {
    SuggestedExpense({
        required this.expenseName,
        required this.description,
        required this.vendorName,
        required this.notes,
        required this.cost,
        required this.category,
        required this.internalKeyForKnownExpenses,
        required this.serviceId,
    });

    final String? expenseName;
    final String? description;
    final dynamic vendorName;
    final dynamic notes;
    final int? cost;
    final String? category;
    final String? internalKeyForKnownExpenses;
    final String? serviceId;

    factory SuggestedExpense.fromJson(Map<String, dynamic> json){ 
        return SuggestedExpense(
            expenseName: json["expenseName"],
            description: json["description"],
            vendorName: json["vendorName"],
            notes: json["notes"],
            cost: json["cost"],
            category: json["category"],
            internalKeyForKnownExpenses: json["internalKeyForKnownExpenses"],
            serviceId: json["serviceId"],
        );
    }

    Map<String, dynamic> toJson() => {
        "expenseName": expenseName,
        "description": description,
        "vendorName": vendorName,
        "notes": notes,
        "cost": cost,
        "category": category,
        "internalKeyForKnownExpenses": internalKeyForKnownExpenses,
        "serviceId": serviceId,
    };

}

class UpcomingApt {
    UpcomingApt({
        required this.customerDetails,
        required this.serviceDetails,
        required this.propSigningDetails,
        required this.place,
        required this.isOnlineSigning,
        required this.isCustomerProvidedMeetingLink,
        required this.createdAt,
        required this.isCancelledBefore,
        required this.isRejected,
        required this.isReschduled,
        required this.isDeleted,
        required this.fromPlugin,
        required this.status,
        required this.isEnquiry,
        required this.cancelAptFlag,
        required this.invoiceStatus,
        required this.invoices,
        required this.isInvoiceDue,
        required this.isInvoiceFullyPaid,
        required this.isExpenseEntered,
        required this.isExpenseNotRequired,
        required this.isMileageEntryRequired,
        required this.isMileageEntered,
        required this.totalMileage,
        required this.milageMappings,
        required this.totalMileageExpense,
        required this.totalMasterExpense,
        required this.totalOtherExpenses,
        required this.profitOnOrder,
        required this.profitWithAllExpense,
        required this.profileWithMileageOnly,
        required this.profileWithOtherExpenses,
        required this.isNoShow,
        required this.signerLeadIds,
        required this.witnessids,
        required this.isWitnessPresent,
        required this.isNotSure,
        required this.extraDescription,
        required this.docsLink,
        required this.isQuotePresent,
        required this.markAsUnCollectable,
        required this.isNotarialActsEntered,
        required this.totalNotarialActsDone,
        required this.isNotarialActsNotRequired,
        required this.totalNotarialActsCost,
        required this.isReported,
        required this.isAddedManually,
        required this.isAssigned,
        required this.orderNotifEmails,
        required this.id,
        required this.notaryId,
        required this.propertyAddress,
        required this.browserTimeZone,
        required this.escrowNumber,
        required this.aptTimeStamp,
        required this.isRealEstateTransaction,
        required this.specialInstructions,
        required this.signers,
        required this.witnessDetails,
        required this.leadId,
        required this.companyId,
        required this.payments,
        required this.expenses,
        required this.mileages,
        required this.notes,
        required this.activityHistory,
        required this.quoteLineItems,
        required this.notarialActsHistory,
        required this.v,
        required this.totalCost,
    });

    final CustomerDetails? customerDetails;
    final GenOfflineElement? serviceDetails;
    final PropSigningDetails? propSigningDetails;
    final Place? place;
    final bool? isOnlineSigning;
    final bool? isCustomerProvidedMeetingLink;
    final DateTime? createdAt;
    final bool? isCancelledBefore;
    final bool? isRejected;
    final bool? isReschduled;
    final bool? isDeleted;
    final bool? fromPlugin;
    final int? status;
    final bool? isEnquiry;
    final bool? cancelAptFlag;
    final int? invoiceStatus;
    final List<dynamic> invoices;
    final bool? isInvoiceDue;
    final bool? isInvoiceFullyPaid;
    final bool? isExpenseEntered;
    final bool? isExpenseNotRequired;
    final bool? isMileageEntryRequired;
    final bool? isMileageEntered;
    final int? totalMileage;
    final List<dynamic> milageMappings;
    final int? totalMileageExpense;
    final int? totalMasterExpense;
    final int? totalOtherExpenses;
    final int? profitOnOrder;
    final int? profitWithAllExpense;
    final int? profileWithMileageOnly;
    final int? profileWithOtherExpenses;
    final bool? isNoShow;
    final List<LeadId> signerLeadIds;
    final List<dynamic> witnessids;
    final bool? isWitnessPresent;
    final bool? isNotSure;
    final dynamic extraDescription;
    final List<dynamic> docsLink;
    final bool? isQuotePresent;
    final bool? markAsUnCollectable;
    final bool? isNotarialActsEntered;
    final int? totalNotarialActsDone;
    final bool? isNotarialActsNotRequired;
    final int? totalNotarialActsCost;
    final bool? isReported;
    final bool? isAddedManually;
    final bool? isAssigned;
    final List<dynamic> orderNotifEmails;
    final String? id;
    final Customer? notaryId;
    final String? propertyAddress;
    final String? browserTimeZone;
    final String? escrowNumber;
    final int? aptTimeStamp;
    final bool? isRealEstateTransaction;
    final String? specialInstructions;
    final List<Signer> signers;
    final List<dynamic> witnessDetails;
    final LeadId? leadId;
    final CompanyId? companyId;
    final List<dynamic> payments;
    final List<dynamic> expenses;
    final List<dynamic> mileages;
    final List<dynamic> notes;
    final List<ActivityHistory> activityHistory;
    final List<dynamic> quoteLineItems;
    final List<NotarialActsHistory> notarialActsHistory;
    final int? v;
    final int? totalCost;

    factory UpcomingApt.fromJson(Map<String, dynamic> json){ 
        return UpcomingApt(
            customerDetails: json["customerDetails"] == null ? null : CustomerDetails.fromJson(json["customerDetails"]),
            serviceDetails: json["serviceDetails"] == null ? null : GenOfflineElement.fromJson(json["serviceDetails"]),
            propSigningDetails: json["prop_SigningDetails"] == null ? null : PropSigningDetails.fromJson(json["prop_SigningDetails"]),
            place: json["place"] == null ? null : Place.fromJson(json["place"]),
            isOnlineSigning: json["isOnlineSigning"],
            isCustomerProvidedMeetingLink: json["isCustomerProvidedMeetingLink"],
            createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
            isCancelledBefore: json["isCancelledBefore"],
            isRejected: json["isRejected"],
            isReschduled: json["isReschduled"],
            isDeleted: json["isDeleted"],
            fromPlugin: json["fromPlugin"],
            status: json["status"],
            isEnquiry: json["isEnquiry"],
            cancelAptFlag: json["cancelAptFlag"],
            invoiceStatus: json["invoiceStatus"],
            invoices: json["invoices"] == null ? [] : List<dynamic>.from(json["invoices"]!.map((x) => x)),
            isInvoiceDue: json["isInvoiceDue"],
            isInvoiceFullyPaid: json["isInvoiceFullyPaid"],
            isExpenseEntered: json["isExpenseEntered"],
            isExpenseNotRequired: json["isExpenseNotRequired"],
            isMileageEntryRequired: json["isMileageEntryRequired"],
            isMileageEntered: json["isMileageEntered"],
            totalMileage: json["totalMileage"],
            milageMappings: json["milageMappings"] == null ? [] : List<dynamic>.from(json["milageMappings"]!.map((x) => x)),
            totalMileageExpense: json["totalMileageExpense"],
            totalMasterExpense: json["totalMasterExpense"],
            totalOtherExpenses: json["totalOtherExpenses"],
            profitOnOrder: json["ProfitOnOrder"],
            profitWithAllExpense: json["profitWithAllExpense"],
            profileWithMileageOnly: json["profileWithMileageOnly"],
            profileWithOtherExpenses: json["profileWithOtherExpenses"],
            isNoShow: json["isNoShow"],
            signerLeadIds: json["signerLeadIds"] == null ? [] : List<LeadId>.from(json["signerLeadIds"]!.map((x) => LeadId.fromJson(x))),
            witnessids: json["witnessids"] == null ? [] : List<dynamic>.from(json["witnessids"]!.map((x) => x)),
            isWitnessPresent: json["isWitnessPresent"],
            isNotSure: json["isNotSure"],
            extraDescription: json["extraDescription"],
            docsLink: json["docsLink"] == null ? [] : List<dynamic>.from(json["docsLink"]!.map((x) => x)),
            isQuotePresent: json["isQuotePresent"],
            markAsUnCollectable: json["markAsUnCollectable"],
            isNotarialActsEntered: json["isNotarialActsEntered"],
            totalNotarialActsDone: json["totalNotarialActsDone"],
            isNotarialActsNotRequired: json["isNotarialActsNotRequired"],
            totalNotarialActsCost: json["totalNotarialActsCost"],
            isReported: json["isReported"],
            isAddedManually: json["isAddedManually"],
            isAssigned: json["isAssigned"],
            orderNotifEmails: json["orderNotifEmails"] == null ? [] : List<dynamic>.from(json["orderNotifEmails"]!.map((x) => x)),
            id: json["_id"],
            notaryId: json["notaryId"] == null ? null : Customer.fromJson(json["notaryId"]),
            propertyAddress: json["propertyAddress"],
            browserTimeZone: json["browserTimeZone"],
            escrowNumber: json["escrowNumber"],
            aptTimeStamp: json["aptTimeStamp"],
            isRealEstateTransaction: json["isRealEstateTransaction"],
            specialInstructions: json["specialInstructions"],
            signers: json["signers"] == null ? [] : List<Signer>.from(json["signers"]!.map((x) => Signer.fromJson(x))),
            witnessDetails: json["witnessDetails"] == null ? [] : List<dynamic>.from(json["witnessDetails"]!.map((x) => x)),
            leadId: json["leadId"] == null ? null : LeadId.fromJson(json["leadId"]),
            companyId: json["companyId"] == null ? null : CompanyId.fromJson(json["companyId"]),
            payments: json["payments"] == null ? [] : List<dynamic>.from(json["payments"]!.map((x) => x)),
            expenses: json["expenses"] == null ? [] : List<dynamic>.from(json["expenses"]!.map((x) => x)),
            mileages: json["mileages"] == null ? [] : List<dynamic>.from(json["mileages"]!.map((x) => x)),
            notes: json["notes"] == null ? [] : List<dynamic>.from(json["notes"]!.map((x) => x)),
            activityHistory: json["activityHistory"] == null ? [] : List<ActivityHistory>.from(json["activityHistory"]!.map((x) => ActivityHistory.fromJson(x))),
            quoteLineItems: json["quoteLineItems"] == null ? [] : List<dynamic>.from(json["quoteLineItems"]!.map((x) => x)),
            notarialActsHistory: json["notarialActsHistory"] == null ? [] : List<NotarialActsHistory>.from(json["notarialActsHistory"]!.map((x) => NotarialActsHistory.fromJson(x))),
            v: json["__v"],
            totalCost: json["totalCost"],
        );
    }

    Map<String, dynamic> toJson() => {
        "customerDetails": customerDetails?.toJson(),
        "serviceDetails": serviceDetails?.toJson(),
        "prop_SigningDetails": propSigningDetails?.toJson(),
        "place": place?.toJson(),
        "isOnlineSigning": isOnlineSigning,
        "isCustomerProvidedMeetingLink": isCustomerProvidedMeetingLink,
        "createdAt": createdAt?.toIso8601String(),
        "isCancelledBefore": isCancelledBefore,
        "isRejected": isRejected,
        "isReschduled": isReschduled,
        "isDeleted": isDeleted,
        "fromPlugin": fromPlugin,
        "status": status,
        "isEnquiry": isEnquiry,
        "cancelAptFlag": cancelAptFlag,
        "invoiceStatus": invoiceStatus,
        "invoices": invoices.map((x) => x).toList(),
        "isInvoiceDue": isInvoiceDue,
        "isInvoiceFullyPaid": isInvoiceFullyPaid,
        "isExpenseEntered": isExpenseEntered,
        "isExpenseNotRequired": isExpenseNotRequired,
        "isMileageEntryRequired": isMileageEntryRequired,
        "isMileageEntered": isMileageEntered,
        "totalMileage": totalMileage,
        "milageMappings": milageMappings.map((x) => x).toList(),
        "totalMileageExpense": totalMileageExpense,
        "totalMasterExpense": totalMasterExpense,
        "totalOtherExpenses": totalOtherExpenses,
        "ProfitOnOrder": profitOnOrder,
        "profitWithAllExpense": profitWithAllExpense,
        "profileWithMileageOnly": profileWithMileageOnly,
        "profileWithOtherExpenses": profileWithOtherExpenses,
        "isNoShow": isNoShow,
        "signerLeadIds": signerLeadIds.map((x) => x?.toJson()).toList(),
        "witnessids": witnessids.map((x) => x).toList(),
        "isWitnessPresent": isWitnessPresent,
        "isNotSure": isNotSure,
        "extraDescription": extraDescription,
        "docsLink": docsLink.map((x) => x).toList(),
        "isQuotePresent": isQuotePresent,
        "markAsUnCollectable": markAsUnCollectable,
        "isNotarialActsEntered": isNotarialActsEntered,
        "totalNotarialActsDone": totalNotarialActsDone,
        "isNotarialActsNotRequired": isNotarialActsNotRequired,
        "totalNotarialActsCost": totalNotarialActsCost,
        "isReported": isReported,
        "isAddedManually": isAddedManually,
        "isAssigned": isAssigned,
        "orderNotifEmails": orderNotifEmails.map((x) => x).toList(),
        "_id": id,
        "notaryId": notaryId?.toJson(),
        "propertyAddress": propertyAddress,
        "browserTimeZone": browserTimeZone,
        "escrowNumber": escrowNumber,
        "aptTimeStamp": aptTimeStamp,
        "isRealEstateTransaction": isRealEstateTransaction,
        "specialInstructions": specialInstructions,
        "signers": signers.map((x) => x?.toJson()).toList(),
        "witnessDetails": witnessDetails.map((x) => x).toList(),
        "leadId": leadId?.toJson(),
        "companyId": companyId?.toJson(),
        "payments": payments.map((x) => x).toList(),
        "expenses": expenses.map((x) => x).toList(),
        "mileages": mileages.map((x) => x).toList(),
        "notes": notes.map((x) => x).toList(),
        "activityHistory": activityHistory.map((x) => x?.toJson()).toList(),
        "quoteLineItems": quoteLineItems.map((x) => x).toList(),
        "notarialActsHistory": notarialActsHistory.map((x) => x?.toJson()).toList(),
        "__v": v,
        "totalCost": totalCost,
    };

}

class ActivityHistory {
    ActivityHistory({
        required this.id,
        required this.type,
        required this.message,
        required this.dateAdded,
    });

    final String? id;
    final String? type;
    final String? message;
    final DateTime? dateAdded;

    factory ActivityHistory.fromJson(Map<String, dynamic> json){ 
        return ActivityHistory(
            id: json["_id"],
            type: json["type"],
            message: json["message"],
            dateAdded: DateTime.tryParse(json["dateAdded"] ?? ""),
        );
    }

    Map<String, dynamic> toJson() => {
        "_id": id,
        "type": type,
        "message": message,
        "dateAdded": dateAdded?.toIso8601String(),
    };

}

class CompanyId {
    CompanyId({
        required this.invoiceAddress,
        required this.photoUrl,
        required this.notes,
        required this.orderEmailAddress,
        required this.invoiceCollectedThisMonth,
        required this.invoiceCollectedSoFar,
        required this.invoiceDueCount,
        required this.contacts,
        required this.defaultInvoiceAmount,
        required this.totalAppts,
        required this.completedAppts,
        required this.totalInvoice,
        required this.createdAt,
        required this.id,
        required this.userId,
        required this.name,
        required this.email,
        required this.phoneNumber,
        required this.knownContacts,
        required this.v,
    });

    final dynamic invoiceAddress;
    final String? photoUrl;
    final List<dynamic> notes;
    final List<dynamic> orderEmailAddress;
    final int? invoiceCollectedThisMonth;
    final int? invoiceCollectedSoFar;
    final int? invoiceDueCount;
    final List<String> contacts;
    final int? defaultInvoiceAmount;
    final int? totalAppts;
    final int? completedAppts;
    final int? totalInvoice;
    final DateTime? createdAt;
    final String? id;
    final String? userId;
    final String? name;
    final String? email;
    final int? phoneNumber;
    final List<dynamic> knownContacts;
    final int? v;

    factory CompanyId.fromJson(Map<String, dynamic> json){ 
        return CompanyId(
            invoiceAddress: json["invoiceAddress"],
            photoUrl: json["photoURL"],
            notes: json["notes"] == null ? [] : List<dynamic>.from(json["notes"]!.map((x) => x)),
            orderEmailAddress: json["orderEmailAddress"] == null ? [] : List<dynamic>.from(json["orderEmailAddress"]!.map((x) => x)),
            invoiceCollectedThisMonth: json["invoiceCollectedThisMonth"],
            invoiceCollectedSoFar: json["invoiceCollectedSoFar"],
            invoiceDueCount: json["invoiceDueCount"],
            contacts: json["contacts"] == null ? [] : List<String>.from(json["contacts"]!.map((x) => x)),
            defaultInvoiceAmount: json["defaultInvoiceAmount"],
            totalAppts: json["totalAppts"],
            completedAppts: json["completedAppts"],
            totalInvoice: json["totalInvoice"],
            createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
            id: json["_id"],
            userId: json["userId"],
            name: json["name"],
            email: json["email"],
            phoneNumber: json["phoneNumber"],
            knownContacts: json["knownContacts"] == null ? [] : List<dynamic>.from(json["knownContacts"]!.map((x) => x)),
            v: json["__v"],
        );
    }

    Map<String, dynamic> toJson() => {
        "invoiceAddress": invoiceAddress,
        "photoURL": photoUrl,
        "notes": notes.map((x) => x).toList(),
        "orderEmailAddress": orderEmailAddress.map((x) => x).toList(),
        "invoiceCollectedThisMonth": invoiceCollectedThisMonth,
        "invoiceCollectedSoFar": invoiceCollectedSoFar,
        "invoiceDueCount": invoiceDueCount,
        "contacts": contacts.map((x) => x).toList(),
        "defaultInvoiceAmount": defaultInvoiceAmount,
        "totalAppts": totalAppts,
        "completedAppts": completedAppts,
        "totalInvoice": totalInvoice,
        "createdAt": createdAt?.toIso8601String(),
        "_id": id,
        "userId": userId,
        "name": name,
        "email": email,
        "phoneNumber": phoneNumber,
        "knownContacts": knownContacts.map((x) => x).toList(),
        "__v": v,
    };

}

class CustomerDetails {
    CustomerDetails({
        required this.companyName,
        required this.customerName,
        required this.customerEmailAddress,
        required this.customerPhoneNumber,
    });

    final String? companyName;
    final String? customerName;
    final String? customerEmailAddress;
    final String? customerPhoneNumber;

    factory CustomerDetails.fromJson(Map<String, dynamic> json){ 
        return CustomerDetails(
            companyName: json["companyName"],
            customerName: json["customerName"],
            customerEmailAddress: json["customerEmailAddress"],
            customerPhoneNumber: json["customerPhoneNumber"],
        );
    }

    Map<String, dynamic> toJson() => {
        "companyName": companyName,
        "customerName": customerName,
        "customerEmailAddress": customerEmailAddress,
        "customerPhoneNumber": customerPhoneNumber,
    };

}

class LeadId {
    LeadId({
        required this.customerRates,
        required this.imageUrl,
        required this.labels,
        required this.createdAt,
        required this.invoiceAddress,
        required this.totalAppts,
        required this.completedAppts,
        required this.totalInvoice,
        required this.invoiceCollectedThisMonth,
        required this.invoiceCollectedSoFar,
        required this.invoiceDueCount,
        required this.id,
        required this.notaryId,
        required this.firstName,
        required this.email,
        required this.phoneNumber,
        required this.type,
        required this.companyId,
        required this.companyName,
        required this.notes,
        required this.knownContacts,
        required this.v,
        required this.source,
        required this.lastName,
        required this.bio,
    });

    final CustomerRates? customerRates;
    final String? imageUrl;
    final List<dynamic> labels;
    final DateTime? createdAt;
    final String? invoiceAddress;
    final int? totalAppts;
    final int? completedAppts;
    final int? totalInvoice;
    final int? invoiceCollectedThisMonth;
    final int? invoiceCollectedSoFar;
    final int? invoiceDueCount;
    final String? id;
    final String? notaryId;
    final String? firstName;
    final String? email;
    final int? phoneNumber;
    final String? type;
    final String? companyId;
    final String? companyName;
    final List<dynamic> notes;
    final List<dynamic> knownContacts;
    final int? v;
    final String? source;
    final String? lastName;
    final String? bio;

    factory LeadId.fromJson(Map<String, dynamic> json){ 
        return LeadId(
            customerRates: json["customerRates"] == null ? null : CustomerRates.fromJson(json["customerRates"]),
            imageUrl: json["imageURL"],
            labels: json["labels"] == null ? [] : List<dynamic>.from(json["labels"]!.map((x) => x)),
            createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
            invoiceAddress: json["invoiceAddress"],
            totalAppts: json["totalAppts"],
            completedAppts: json["completedAppts"],
            totalInvoice: json["totalInvoice"],
            invoiceCollectedThisMonth: json["invoiceCollectedThisMonth"],
            invoiceCollectedSoFar: json["invoiceCollectedSoFar"],
            invoiceDueCount: json["invoiceDueCount"],
            id: json["_id"],
            notaryId: json["notaryId"],
            firstName: json["firstName"],
            email: json["email"],
            phoneNumber: json["phoneNumber"],
            type: json["type"],
            companyId: json["companyId"],
            companyName: json["companyName"],
            notes: json["notes"] == null ? [] : List<dynamic>.from(json["notes"]!.map((x) => x)),
            knownContacts: json["knownContacts"] == null ? [] : List<dynamic>.from(json["knownContacts"]!.map((x) => x)),
            v: json["__v"],
            source: json["source"],
            lastName: json["lastName"],
            bio: json["bio"],
        );
    }

    Map<String, dynamic> toJson() => {
        "customerRates": customerRates?.toJson(),
        "imageURL": imageUrl,
        "labels": labels.map((x) => x).toList(),
        "createdAt": createdAt?.toIso8601String(),
        "invoiceAddress": invoiceAddress,
        "totalAppts": totalAppts,
        "completedAppts": completedAppts,
        "totalInvoice": totalInvoice,
        "invoiceCollectedThisMonth": invoiceCollectedThisMonth,
        "invoiceCollectedSoFar": invoiceCollectedSoFar,
        "invoiceDueCount": invoiceDueCount,
        "_id": id,
        "notaryId": notaryId,
        "firstName": firstName,
        "email": email,
        "phoneNumber": phoneNumber,
        "type": type,
        "companyId": companyId,
        "companyName": companyName,
        "notes": notes.map((x) => x).toList(),
        "knownContacts": knownContacts.map((x) => x).toList(),
        "__v": v,
        "source": source,
        "lastName": lastName,
        "bio": bio,
    };

}

class CustomerRates {
    CustomerRates({
        required this.others,
    });

    final List<dynamic> others;

    factory CustomerRates.fromJson(Map<String, dynamic> json){ 
        return CustomerRates(
            others: json["others"] == null ? [] : List<dynamic>.from(json["others"]!.map((x) => x)),
        );
    }

    Map<String, dynamic> toJson() => {
        "others": others.map((x) => x).toList(),
    };

}

class NotarialActsHistory {
    NotarialActsHistory({
        required this.id,
        required this.dateDone,
        required this.actsNumber,
        required this.actsPerCost,
    });

    final String? id;
    final DateTime? dateDone;
    final int? actsNumber;
    final int? actsPerCost;

    factory NotarialActsHistory.fromJson(Map<String, dynamic> json){ 
        return NotarialActsHistory(
            id: json["_id"],
            dateDone: DateTime.tryParse(json["dateDone"] ?? ""),
            actsNumber: json["actsNumber"],
            actsPerCost: json["actsPerCost"],
        );
    }

    Map<String, dynamic> toJson() => {
        "_id": id,
        "dateDone": dateDone?.toIso8601String(),
        "actsNumber": actsNumber,
        "actsPerCost": actsPerCost,
    };

}

class Place {
    Place({
        required this.isInOffice,
        required this.completeAddress,
        required this.lat,
        required this.lon,
        required this.zipcode,
        required this.city,
        required this.state,
        required this.timeZone,
        required this.area,
        required this.streetAddress,
        required this.placeId,
        required this.extraInfo,
    });

    final bool? isInOffice;
    final String? completeAddress;
    final double? lat;
    final double? lon;
    final dynamic zipcode;
    final String? city;
    final String? state;
    final String? timeZone;
    final String? area;
    final String? streetAddress;
    final String? placeId;
    final String? extraInfo;

    factory Place.fromJson(Map<String, dynamic> json){ 
        return Place(
            isInOffice: json["isInOffice"],
            completeAddress: json["completeAddress"],
            lat: json["lat"],
            lon: json["lon"],
            zipcode: json["zipcode"],
            city: json["city"],
            state: json["state"],
            timeZone: json["timeZone"],
            area: json["area"],
            streetAddress: json["streetAddress"],
            placeId: json["place_id"],
            extraInfo: json["extraInfo"],
        );
    }

    Map<String, dynamic> toJson() => {
        "isInOffice": isInOffice,
        "completeAddress": completeAddress,
        "lat": lat,
        "lon": lon,
        "zipcode": zipcode,
        "city": city,
        "state": state,
        "timeZone": timeZone,
        "area": area,
        "streetAddress": streetAddress,
        "place_id": placeId,
        "extraInfo": extraInfo,
    };

}

class PropSigningDetails {
    PropSigningDetails({
        required this.signerCount,
        required this.witnessCount,
    });

    final int? signerCount;
    final int? witnessCount;

    factory PropSigningDetails.fromJson(Map<String, dynamic> json){ 
        return PropSigningDetails(
            signerCount: json["signerCount"],
            witnessCount: json["witnessCount"],
        );
    }

    Map<String, dynamic> toJson() => {
        "signerCount": signerCount,
        "witnessCount": witnessCount,
    };

}

class Signer {
    Signer({
        required this.id,
        required this.firstName,
        required this.phoneNumber,
        required this.emailAddress,
    });

    final String? id;
    final String? firstName;
    final String? phoneNumber;
    final String? emailAddress;

    factory Signer.fromJson(Map<String, dynamic> json){ 
        return Signer(
            id: json["_id"],
            firstName: json["firstName"],
            phoneNumber: json["phoneNumber"],
            emailAddress: json["emailAddress"],
        );
    }

    Map<String, dynamic> toJson() => {
        "_id": id,
        "firstName": firstName,
        "phoneNumber": phoneNumber,
        "emailAddress": emailAddress,
    };

}
