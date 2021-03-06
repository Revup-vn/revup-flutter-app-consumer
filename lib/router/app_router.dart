import 'package:auto_route/auto_route.dart';

import '../../splash/splash.dart';
import '../account/view/account_page.u.dart';
import '../find_provider/view/list_repairer_page.u.dart';
import '../guide-support/view/about_us_page.u.dart';
import '../guide-support/view/faqs_page.u.dart';
import '../guide-support/view/terms_privacy_page.u.dart';
import '../guide-support/widgets/faqs_item_otp.u.dart';
import '../history_consumer/view/history_consumer_page.u.dart';
import '../history_consumer/view/history_detail_consumer_page.u.dart';
import '../home/view/home_page.u.dart';
import '../home/widgets/home_body_page.u.dart';
import '../invoice/view/service_invoice_page.u.dart';
import '../invoice_payment/view/invoice_payment_page.u.dart';
import '../login/view/login_page.u.dart';
import '../notification_consumer/view/notification_consumer_page.u.dart';
import '../onboarding/view/onboarding_page.dart';
import '../order-sevice/view/repair_status_page.u.dart';
import '../order-sevice/view/service_detail_page.u.dart';
import '../order/order_overview/view/overview_order_page.u.dart';
import '../otp/view/otp_page.u.dart';
import '../payment/view/payment_page.u.dart';
import '../profile/view/signup6_page.u.dart';
import '../profile/view/update_profile_page.u.dart';
import '../repairer_profile/view/repairer_profile_page.u.dart';
import '../review-repairman/view/review_repairman_page.u.dart';
import '../service/choose-product/view/choose_product_page.dart';
import '../service/choose-service/view/choose_service_page.dart';
import '../service/choose-service/view/service_details_page.dart';
import '../service/models/service_data.dart';
import '../service/new-service/view/new_service_request_page.dart';
import '../test/test.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage, initial: true),
    AdaptiveRoute<void>(page: ServiceDetailPage),
    AdaptiveRoute<void>(page: RepairStatusPage),
    AdaptiveRoute<void>(page: ServiceInvoicePage),
    AdaptiveRoute<void>(page: InvoicePaymentPage),
    AdaptiveRoute<void>(page: ReviewRepairmanPage),
    AdaptiveRoute<void>(
      page: HomePage,
      children: [
        AdaptiveRoute<void>(page: HomeBodyPage),
        AdaptiveRoute<void>(page: HistoryConsumerPage),
        AdaptiveRoute<void>(page: NotificationConsumerPage),
        AdaptiveRoute<void>(page: AccountPage),
      ],
    ),
    AdaptiveRoute<void>(page: HistoryConsumerDetailPage),
    AdaptiveRoute<void>(page: PaymentPage),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: UpdateProfilePage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
    AdaptiveRoute<void>(page: OTPPage),
    AdaptiveRoute<void>(page: Signup6Page),
    AdaptiveRoute<void>(page: ChooseServicePage),
    AdaptiveRoute<ServiceData>(page: NewServiceRequestPage),
    AdaptiveRoute<void>(page: ServiceDetailsPage),
    AdaptiveRoute<void>(page: ChooseProductPage),
    AdaptiveRoute<void>(page: ListRepairerPage),
    AdaptiveRoute<void>(page: RepairerProfilePage),
    AdaptiveRoute<void>(page: OverViewOrderPage),
    AdaptiveRoute<void>(page: FAQsPage),
    AdaptiveRoute<void>(page: FAQsItemOTPPage),
    AdaptiveRoute<void>(page: AboutUsPage),
    AdaptiveRoute<void>(page: TermsPrivacyPage),
  ],
)
class $AppRouter {}
