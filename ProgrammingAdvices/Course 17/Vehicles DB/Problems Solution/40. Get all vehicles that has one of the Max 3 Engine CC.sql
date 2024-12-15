-- 40. Get all vehicles that has one of the Max 3 Engine CC

Select * From VehicleDetails v
Where v.Engine_CC in (Select distinct top 3 v.Engine_CC From VehicleDetails v Order By v.Engine_CC desc)
Order By v.Engine_CC desc

--ملاحظة هذه الطريقة هي نفسها تستخدمها اذا كان لديك جدول فيه طلاب ومعدلاتهم وطلب منك ان تسترجع العشرة الاوائل
--العشرة الاوائل ممكن يكونو 15 لانه ممكن ان يكون هنالك علامات مكررة
--فيجب عليك ان تسترجع اعلى عشرة علامات وبعدها تسترجع الطلاب الذين حصلو على واحده من هذه العلامات