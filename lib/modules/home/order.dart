import 'package:rimo/core/exports.dart';
import 'package:rimo/data/repository/app_repository.dart';
import 'package:rimo/widgets/switch_button.dart';

class Orders extends ConsumerStatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OrdersState();
}

class _OrdersState extends ConsumerState<Orders> {
  @override
  void initState() {
    super.initState();
    final BaseAppRepository _appRepository = AppRepository();
    _appRepository.getOrder();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: blackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "MY ORDERS",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: blackColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 52.h),
            Text(
              "New Order",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: blackColor,
              ),
            ),
            SizedBox(height: 16.h),
            ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 118.h,
                        width: 375.w,
                        decoration: BoxDecoration(
                          color: const Color(0xffE4E4E4),
                          borderRadius: BorderRadius.circular(10.w),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.w, vertical: 15.h),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "N2800",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 76.w),
                                Text(
                                  "5.3km",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: greyTextColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                const ColorButton(
                                  color: Color(0xff147DDE),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "Ojota New Garage, Ikorodu Road",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff282828),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                const ColorButton(
                                  color: Color(0xff50AD64),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "Ojota New Garage, Ikorodu Road",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff282828),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ActionButton(
                              text: "Accept",
                              textColor: const Color(0xff145B14),
                              color: greenColor,
                              onPressed: () {
                                //
                              },
                            ),
                            ActionButton(
                              text: "Accept",
                              textColor: const Color(0xffD03535),
                              color: redColor,
                              onPressed: () {
                                //
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ColorButton extends StatelessWidget {
  final Color? color;

  const ColorButton({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      width: 15.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(3.w),
      ),
    );
  }
}
