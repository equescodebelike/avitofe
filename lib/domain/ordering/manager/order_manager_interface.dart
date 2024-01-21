abstract class IOrderManager{
  void updateDeliveryMethod(int selectedDeliveryId);
  void updatePaymentMethod(int selectedPaymentId);
  void updateCheckout();

  get deliveryMethodStream;
  get paymentMethodsStream;
  get checkoutStream;

  get selectedDeliveryMethod;
  get selectedPaymentMethod;
  get checkout;



}