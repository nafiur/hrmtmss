<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{RoleController,AdminController,NoticeController,ReportsController,DownloadsController, LatestsController, NewEmployeeController,StaffProfileController};
use App\Http\Controllers\Setup\{AreaController,ZoneController,SetupController,BranchController, DomainController, GenderController, SectorController,
    DistrictController, DivisionController, ReligionController, UpazillaController,JobStatusController, BloodGroupController, DepartmentController,
    DesignationController, EmployeeTypeController, MaritalStatusController, UserManagementController, EducationalQualificationController,};
use App\Http\Controllers\Pos\DefaultController;
use App\Http\Controllers\Pos\InvoiceController;
use App\Http\Controllers\Pos\ProductController;
use App\Http\Controllers\Pos\CategoryController;
use App\Http\Controllers\Pos\CustomerController;
use App\Http\Controllers\Pos\PurchaseController;
use App\Http\Controllers\Pos\SupplierController;
use App\Http\Controllers\Pos\UnitController;
use App\Http\Controllers\Demo\DemoController;
use App\Http\Controllers\Pos\StockController;
use App\Http\Controllers\Pim\{PIMController, BasicInfoController,GuardianController,NomineeController,EducationController,
    CourseController, TrainingController, ExperienceController, FamilyBrotherSisterController, FamilyChildController,
    FamilySpouceController, PIMReportController, StaffDetailsReportController};



Route::view('/', 'auth.login');
// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('division-district-upazilla','DivisionDistrictUpazillaController@index');
Route::post('get-districts-by-division','DivisionDistrictUpazillaController@getDistrict');
Route::post('get-upazillas-by-district','DivisionDistrictUpazillaController@getUpazilla');

Route::controller(DemoController::class)->group(function () {
    Route::get('/about', 'Index')->name('about.page')->middleware('check');
    Route::get('/contact', 'ContactMethod')->name('cotact.page');
});

Route::controller(LatestsController::class)->group(function () {
    Route::get('/about', 'Index')->name('about.page')->middleware('check');
    Route::get('/contact', 'ContactMethod')->name('cotact.page');
});
// Route::get('/newemployee/add',[DivisionDistrictUpazillaController::class,'index']);
//     Route::post('api/fetch-district',[DivisionDistrictUpazillaController::class,'fetchDistrict']);
//     Route::post('api/fetch-upazilla',[DivisionDistrictUpazillaController::class,'fetchUpazilla']);

Route::middleware('auth')->group(function(){



 // Admin All Route
Route::controller(AdminController::class)->group(function () {
    Route::get('/admin/logout', 'destroy')->name('admin.logout');
    Route::get('/admin/profile', 'Profile')->name('admin.profile');
    Route::get('/edit/profile', 'EditProfile')->name('edit.profile');
    Route::post('/store/profile', 'StoreProfile')->name('store.profile');
    Route::get('/change/password', 'ChangePassword')->name('change.password');
    Route::post('/update/password', 'UpdatePassword')->name('update.password');

});

 // Setup All Route

Route::controller(SetupController::class)->group(function () {
    Route::get('/setup/all', 'SetupAll')->name('setup.all');

});
 // PIM All Route

Route::controller(PIMController::class)->group(function () {
    Route::get('/pim/all', 'AllPIM')->name('pim.all');

});


 // Satff Profile All Route
Route::controller(StaffProfileController::class)->group(function () {
    Route::get('/staffprofile/all', 'StaffProfileAll')->name('staffprofile.all');

});

// User Management Setup
Route::controller(UserManagementController::class)->group(function () {
    Route::get('/usermanagement/all', 'UserManagementAll')->name('usermanagement.all');
    Route::get('/usermanagement/add', 'UserManagementAdd')->name('usermanagement.add');
    Route::post('/usermanagement/store', 'UserManagementStore')->name('usermanagement.store');
    Route::get('/usermanagement/edit/{id}', 'UserManagementEdit')->name('usermanagement.edit');
    Route::post('/usermanagement/update', 'UserManagementUpdate')->name('usermanagement.update');
    Route::get('/usermanagement/delete/{id}', 'UserManagementDelete')->name('usermanagement.delete');

});
// Sector Setup
Route::controller(SectorController::class)->group(function () {
    Route::get('/sector/all', 'SectorAll')->name('sector.all')->middleware('permission:sector.all');
    Route::get('/sector/add', 'SectorAdd')->name('sector.add')->middleware('permission:sector.add');
    Route::post('/sector/store', 'SectorStore')->name('sector.store');
    Route::get('/sector/edit/{id}', 'SectorEdit')->name('sector.edit');
    Route::post('/sector/update', 'SectorUpdate')->name('sector.update');
    Route::get('/sector/delete/{id}', 'SectorDelete')->name('sector.delete')->middleware('permission:sector.delete');

});

// Domain Setup
Route::controller(DomainController::class)->group(function () {
    Route::get('/domain/all', 'DomainAll')->name('domain.all')->middleware('permission:domain.all');
    Route::get('/domain/add', 'DomainAdd')->name('domain.add')->middleware('permission:domain.add');
    Route::post('/domain/store', 'DomainStore')->name('domain.store')->middleware('permission:domain.store');
    Route::get('/domain/edit/{id}', 'DomainEdit')->name('domain.edit')->middleware('permission:domain.edit');
    Route::post('/domain/update', 'DomainUpdate')->name('domain.update')->middleware('permission:domain.update');
    Route::get('/domain/delete/{id}', 'DomainDelete')->name('domain.delete')->middleware('permission:domain.delete');

});

// Designation Setup
Route::controller(DesignationController::class)->group(function () {
    Route::get('/designation/all', 'DesignationAll')->name('designation.all')->middleware('permission:designation.all');
    Route::get('/designation/add', 'DesignationAdd')->name('designation.add')->middleware('permission:designation.add');
    Route::post('/designation/store', 'DesignationStore')->name('designation.store')->middleware('permission:designation.store');
    Route::get('/designation/edit/{id}', 'DesignationEdit')->name('designation.edit')->middleware('permission:designation.edit');
    Route::post('/designation/update', 'DesignationUpdate')->name('designation.update')->middleware('permission:designation.update');
    Route::get('/designation/delete/{id}', 'DesignationDelete')->name('designation.delete')->middleware('permission:designation.delete');

});

// Divission Setup
Route::controller(DivisionController::class)->group(function () {
    Route::get('/division/all', 'DivisionAll')->name('division.all');
    Route::get('/division/add', 'DivisionAdd')->name('division.add');
    Route::post('/division/store', 'DivisionStore')->name('division.store');
    Route::get('/division/edit/{id}', 'DivisionEdit')->name('division.edit');
    Route::post('/division/update', 'DivisionUpdate')->name('division.update');
    Route::get('/division/delete/{id}', 'DivisionDelete')->name('division.delete');

});

// District Setup
Route::controller(DistrictController::class)->group(function () {
    Route::get('/district/all', 'DistrictAll')->name('district.all');
    Route::get('/district/add', 'DistrictAdd')->name('district.add');
    Route::post('/district/store', 'DistrictStore')->name('district.store');
    Route::get('/district/edit/{id}', 'DistrictEdit')->name('district.edit');
    Route::post('/district/update', 'DistrictUpdate')->name('district.update');
    Route::get('/district/delete/{id}', 'DistrictDelete')->name('district.delete');

});

// Upazilla Setup
Route::controller(UpazillaController::class)->group(function () {
    Route::get('/upazilla/all', 'UpazillaAll')->name('upazilla.all');
    Route::get('/upazilla/add', 'UpazillaAdd')->name('upazilla.add');
    Route::post('/upazilla/store', 'UpazillaStore')->name('upazilla.store');
    Route::get('/upazilla/edit/{id}', 'UpazillaEdit')->name('upazilla.edit');
    Route::post('/upazilla/update', 'UpazillaUpdate')->name('upazilla.update');
    Route::get('/upazilla/delete/{id}', 'UpazillaDelete')->name('upazilla.delete');

});

// BloodGroup Setup
Route::controller(BloodGroupController::class)->group(function () {
    Route::get('/bloodgroup/all', 'BloodGroupAll')->name('bloodgroup.all');
    Route::get('/bloodgroup/add', 'BloodGroupAdd')->name('bloodgroup.add');
    Route::post('/bloodgroup/store', 'BloodGroupStore')->name('bloodgroup.store');
    Route::get('/bloodgroup/edit/{id}', 'BloodGroupEdit')->name('bloodgroup.edit');
    Route::post('/bloodgroup/update', 'BloodGroupUpdate')->name('bloodgroup.update');
    Route::get('/bloodgroup/delete/{id}', 'BloodGroupDelete')->name('bloodgroup.delete');

});

// Department Setup
Route::controller(DepartmentController::class)->group(function () {
    Route::get('/department/all', 'DepartmentAll')->name('department.all');
    Route::get('/department/add', 'DepartmentAdd')->name('department.add');
    Route::post('/department/store', 'DepartmentStore')->name('department.store');
    Route::get('/department/edit/{id}', 'DepartmentEdit')->name('department.edit');
    Route::post('/department/update', 'DepartmentUpdate')->name('department.update');
    Route::get('/department/delete/{id}', 'DepartmentDelete')->name('department.delete');

});

// Educational Qualification Setup
Route::controller(EducationalQualificationController::class)->group(function () {
    Route::get('/educationalqualification/all', 'EducationalQualificationAll')->name('educationalqualification.all');
    Route::get('/educationalqualification/add', 'EducationalQualificationAdd')->name('educationalqualification.add');
    Route::post('/educationalqualification/store', 'EducationalQualificationStore')->name('educationalqualification.store');
    Route::get('/educationalqualification/edit/{id}', 'EducationalQualificationEdit')->name('educationalqualification.edit');
    Route::post('/educationalqualification/update', 'EducationalQualificationUpdate')->name('educationalqualification.update');
    Route::get('/educationalqualification/delete/{id}', 'EducationalQualificationDelete')->name('educationalqualification.delete');

});

// Employee Type Setup
Route::controller(EmployeeTypeController::class)->group(function () {
    Route::get('/employeetype/all', 'EmployeeTypeAll')->name('employeetype.all');
    Route::get('/employeetype/add', 'EmployeeTypeAdd')->name('employeetype.add');
    Route::post('/employeetype/store', 'EmployeeTypeStore')->name('employeetype.store');
    Route::get('/employeetype/edit/{id}', 'EmployeeTypeEdit')->name('employeetype.edit');
    Route::post('/employeetype/update', 'EmployeeTypeUpdate')->name('employeetype.update');
    Route::get('/employeetype/delete/{id}', 'EmployeeTypeDelete')->name('employeetype.delete');

});

// Gender Type Setup
Route::controller(GenderController::class)->group(function () {
    Route::get('/gender/all', 'GenderAll')->name('gender.all');
    Route::get('/gender/add', 'GenderAdd')->name('gender.add');
    Route::post('/gender/store', 'GenderStore')->name('gender.store');
    Route::get('/gender/edit/{id}', 'GenderEdit')->name('gender.edit');
    Route::post('/gender/update', 'GenderUpdate')->name('gender.update');
    Route::get('/gender/delete/{id}', 'GenderDelete')->name('gender.delete');

});

// Job Status Setup
Route::controller(JobStatusController::class)->group(function () {
    Route::get('/jobstatus/all', 'JobStatusAll')->name('jobstatus.all');
    Route::get('/jobstatus/add', 'JobStatusAdd')->name('jobstatus.add');
    Route::post('/jobstatus/store', 'JobStatusStore')->name('jobstatus.store');
    Route::get('/jobstatus/edit/{id}', 'JobStatusEdit')->name('jobstatus.edit');
    Route::post('/jobstatus/update', 'JobStatusUpdate')->name('jobstatus.update');
    Route::get('/jobstatus/delete/{id}', 'JobStatusDelete')->name('jobstatus.delete');

});

// Marital Status Setup
Route::controller(MaritalStatusController::class)->group(function () {
    Route::get('/maritalstatus/all', 'MaritalStatusAll')->name('maritalstatus.all');
    Route::get('/maritalstatus/add', 'MaritalStatusAdd')->name('maritalstatus.add');
    Route::post('/maritalstatus/store', 'MaritalStatusStore')->name('maritalstatus.store');
    Route::get('/maritalstatus/edit/{id}', 'MaritalStatusEdit')->name('maritalstatus.edit');
    Route::post('/maritalstatus/update', 'MaritalStatusUpdate')->name('maritalstatus.update');
    Route::get('/maritalstatus/delete/{id}', 'MaritalStatusDelete')->name('maritalstatus.delete');

});

// Religion Setup
Route::controller(ReligionController::class)->group(function () {
    Route::get('/religion/all', 'ReligionAll')->name('religion.all');
    Route::get('/religion/add', 'ReligionAdd')->name('religion.add');
    Route::post('/religion/store', 'ReligionStore')->name('religion.store');
    Route::get('/religion/edit/{id}', 'ReligionEdit')->name('religion.edit');
    Route::post('/religion/update', 'ReligionUpdate')->name('religion.update');
    Route::get('/religion/delete/{id}', 'ReligionDelete')->name('religion.delete');

});

// Zone Setup
Route::controller(ZoneController::class)->group(function () {
    Route::get('/zone/all', 'ZoneAll')->name('zone.all');
    Route::get('/zone/add', 'ZoneAdd')->name('zone.add');
    Route::post('/zone/store', 'ZoneStore')->name('zone.store');
    Route::get('/zone/edit/{id}', 'ZoneEdit')->name('zone.edit');
    Route::post('/zone/update', 'ZoneUpdate')->name('zone.update');
    Route::get('/zone/delete/{id}', 'ZoneDelete')->name('zone.delete');

});

// Area Setup
Route::controller(AreaController::class)->group(function () {
    Route::get('/area/all', 'AreaAll')->name('area.all');
    Route::get('/area/add', 'AreaAdd')->name('area.add');
    Route::post('/area/store', 'AreaStore')->name('area.store');
    Route::get('/area/edit/{id}', 'AreaEdit')->name('area.edit');
    Route::post('/area/update', 'AreaUpdate')->name('area.update');
    Route::get('/area/delete/{id}', 'AreaDelete')->name('area.delete');

});

// Branch Setup
Route::controller(BranchController::class)->group(function () {
    Route::get('/branch/all', 'BranchAll')->name('branch.all');
    Route::get('/branch/add', 'BranchAdd')->name('branch.add');
    Route::post('/branch/store', 'BranchStore')->name('branch.store');
    Route::get('/branch/edit/{id}', 'BranchEdit')->name('branch.edit');
    Route::post('/branch/update', 'BranchUpdate')->name('branch.update');
    Route::get('/branch/delete/{id}', 'BranchDelete')->name('branch.delete');

});

// New Employee Information
Route::controller(NewEmployeeController::class)->group(function () {
    Route::get('/employee/all', 'EmployeeAll')->name('employee.all')->middleware('permission:employee.all');
    Route::get('/employee/show/{id}', 'EmployeeShow')->name('employee.show')->middleware('permission:employee.show');
    Route::get('/newemployee/all', 'NewEmployeeAll')->name('newemployee.all')->middleware('permission:newemployee.all');
    Route::get('/newemployee/add', 'NewEmployeeAdd')->name('newemployee.add')->middleware('permission:newemployee.add');
    // Route::get('/newemployee/show', 'NewEmployeeShow')->name('newemployee.show')->middleware('permission:newemployee.show');
    Route::post('/newemployee/store', 'NewEmployeeStore')->name('newemployee.store');
    // Route::get('/newemployee/show3/{id}', 'NewEmployeeShow')->name('newemployee.show')->middleware('permission:newemployee.show');

    Route::get('/newemployee/show/{id}', 'NewEmployeeShow')->name('newemployee.show')->middleware('permission:newemployee.show');
    Route::get('/newemployee/edit/{id}', 'NewEmployeeEdit')->name('newemployee.edit')->middleware('permission:newemployee.edit');
    Route::post('/newemployee/update', 'NewEmployeeUpdate')->name('newemployee.update');
    Route::get('/newemployee/delete/{id}', 'NewEmployeeDelete')->name('newemployee.delete')->middleware('permission:newemployee.delete');

});

// Downloads
Route::controller(DownloadsController::class)->group(function () {
    Route::get('/download/all', 'DownloadsAll')->name('download.all')->middleware('permission:formformats.all');
    Route::get('/download/show/{id}', 'DownloadsShow')->name('download.show')->middleware('permission:formformats.show');
    Route::get('/download/add', 'DownloadsAdd')->name('download.add')->middleware('permission:formformats.add');
    Route::post('/download/store', 'DownloadsStore')->name('download.store');
    Route::get('/download/edit/{id}', 'DownloadsEdit')->name('download.edit')->middleware('permission:formformats.edit');
    Route::post('/download/update', 'DownloadsUpdate')->name('download.update');
    Route::get('/download/delete/{id}', 'DownloadsDelete')->name('download.delete')->middleware('permission:formformats.delete');

});

// Notices
Route::controller(NoticeController::class)->group(function () {
    Route::get('/notice/all', 'NoticeAll')->name('notice.all')->middleware('permission:notice.all');
    // Route::get('/notice/latest', 'NoticeLatest');
    Route::get('/notice/show/{id}', 'NoticeShow')->name('notice.show')->middleware('permission:notice.show');
    Route::get('/notice/add', 'NoticeAdd')->name('notice.add')->middleware('permission:notice.add');
    Route::post('/notice/store', 'NoticeStore')->name('notice.store');
    Route::get('/notice/edit/{id}', 'NoticeEdit')->name('notice.edit')->middleware('permission:notice.edit');
    Route::post('/notice/update', 'NoticeUpdate')->name('notice.update');
    Route::get('/notice/delete/{id}', 'NoticeDelete')->name('notice.delete')->middleware('permission:notice.delete');

});
// Reports
Route::controller(ReportsController::class)->group(function () {
    Route::get('/report/all', 'ReportAll')->name('report.all')->middleware('permission:report.all');
    Route::get('/report/show/{id}', 'ReportShow')->name('report.show')->middleware('permission:report.show');
    Route::get('/report/add', 'ReportAdd')->name('report.add')->middleware('permission:report.add');
    Route::post('/report/store', 'ReportStore')->name('report.store');
    Route::get('/report/edit/{id}', 'ReportEdit')->name('report.edit')->middleware('permission:report.edit');
    Route::post('/report/update', 'ReportUpdate')->name('report.update');
    Route::get('/report/delete/{id}', 'ReportDelete')->name('report.delete')->middleware('permission:report.delete');

});

// Usermanagement Setup
Route::controller(UserManagementController::class)->group(function () {
    Route::get('/usermanagement/all', 'UserManagementAll')->name('usermanagement.all');
    Route::get('/usermanagement/add', 'UserManagementAdd')->name('usermanagement.add');
    Route::post('/usermanagement/store', 'UserManagementStore')->name('usermanagement.store');
    Route::get('/usermanagement/edit/{id}', 'UserManagementEdit')->name('usermanagement.edit');
    Route::post('/usermanagement/update', 'UserManagementUpdate')->name('usermanagement.update');
    Route::get('/usermanagement/delete/{id}', 'UserManagementDelete')->name('usermanagement.delete');

});


 // Supplier All Route
Route::controller(SupplierController::class)->group(function () {
    Route::get('/supplier/all', 'SupplierAll')->name('supplier.all');
    Route::get('/supplier/add', 'SupplierAdd')->name('supplier.add');
    Route::post('/supplier/store', 'SupplierStore')->name('supplier.store');
    Route::get('/supplier/edit/{id}', 'SupplierEdit')->name('supplier.edit');
    Route::post('/supplier/update', 'SupplierUpdate')->name('supplier.update');
    Route::get('/supplier/delete/{id}', 'SupplierDelete')->name('supplier.delete');
});


// Customer All Route
Route::controller(CustomerController::class)->group(function () {
    Route::get('/customer/all', 'CustomerAll')->name('customer.all');
    Route::get('/customer/add', 'CustomerAdd')->name('customer.add');
    Route::post('/customer/store', 'CustomerStore')->name('customer.store');
    Route::get('/customer/edit/{id}', 'CustomerEdit')->name('customer.edit');
    Route::post('/customer/update', 'CustomerUpdate')->name('customer.update');
    Route::get('/customer/delete/{id}', 'CustomerDelete')->name('customer.delete');

    Route::get('/credit/customer', 'CreditCustomer')->name('credit.customer');
    Route::get('/credit/customer/print/pdf', 'CreditCustomerPrintPdf')->name('credit.customer.print.pdf');

    Route::get('/customer/edit/invoice/{invoice_id}', 'CustomerEditInvoice')->name('customer.edit.invoice');
    Route::post('/customer/update/invoice/{invoice_id}', 'CustomerUpdateInvoice')->name('customer.update.invoice');

    Route::get('/customer/invoice/details/{invoice_id}', 'CustomerInvoiceDetails')->name('customer.invoice.details.pdf');

    Route::get('/paid/customer', 'PaidCustomer')->name('paid.customer');
    Route::get('/paid/customer/print/pdf', 'PaidCustomerPrintPdf')->name('paid.customer.print.pdf');

    Route::get('/customer/wise/report', 'CustomerWiseReport')->name('customer.wise.report');
    Route::get('/customer/wise/credit/report', 'CustomerWiseCreditReport')->name('customer.wise.credit.report');
    Route::get('/customer/wise/paid/report', 'CustomerWisePaidReport')->name('customer.wise.paid.report');
});


// Unit All Route
Route::controller(UnitController::class)->group(function () {
    Route::get('/unit/all', 'UnitAll')->name('unit.all');
    Route::get('/unit/add', 'UnitAdd')->name('unit.add');
    Route::post('/unit/store', 'UnitStore')->name('unit.store');
    Route::get('/unit/edit/{id}', 'UnitEdit')->name('unit.edit');
    Route::post('/unit/update', 'UnitUpdate')->name('unit.update');
    Route::get('/unit/delete/{id}', 'UnitDelete')->name('unit.delete');
});


// Category All Route
Route::controller(CategoryController::class)->group(function () {
    Route::get('/category/all', 'CategoryAll')->name('category.all');
    Route::get('/category/add', 'CategoryAdd')->name('category.add');
    Route::post('/category/store', 'CategoryStore')->name('category.store');
    Route::get('/category/edit/{id}', 'CategoryEdit')->name('category.edit');
    Route::post('/category/update', 'CategoryUpdate')->name('category.update');
    Route::get('/category/delete/{id}', 'CategoryDelete')->name('category.delete');

});


// Product All Route
Route::controller(ProductController::class)->group(function () {
    Route::get('/product/all', 'ProductAll')->name('product.all');
    Route::get('/product/add', 'ProductAdd')->name('product.add');
    Route::post('/product/store', 'ProductStore')->name('product.store');
    Route::get('/product/edit/{id}', 'ProductEdit')->name('product.edit');
    Route::post('/product/update', 'ProductUpdate')->name('product.update');
    Route::get('/product/delete/{id}', 'ProductDelete')->name('product.delete');

});



// Purchase All Route
Route::controller(PurchaseController::class)->group(function () {
    Route::get('/purchase/all', 'PurchaseAll')->name('purchase.all');
    Route::get('/purchase/add', 'PurchaseAdd')->name('purchase.add');
    Route::post('/purchase/store', 'PurchaseStore')->name('purchase.store');
    Route::get('/purchase/delete/{id}', 'PurchaseDelete')->name('purchase.delete');
    Route::get('/purchase/pending', 'PurchasePending')->name('purchase.pending');
    Route::get('/purchase/approve/{id}', 'PurchaseApprove')->name('purchase.approve');

    Route::get('/daily/purchase/report', 'DailyPurchaseReport')->name('daily.purchase.report');
    Route::get('/daily/purchase/pdf', 'DailyPurchasePdf')->name('daily.purchase.pdf');

});


// Invoice All Route
Route::controller(InvoiceController::class)->group(function () {
    Route::get('/invoice/all', 'InvoiceAll')->name('invoice.all');
    Route::get('/invoice/add', 'invoiceAdd')->name('invoice.add');
    Route::post('/invoice/store', 'InvoiceStore')->name('invoice.store');

    Route::get('/invoice/pending/list', 'PendingList')->name('invoice.pending.list');
    Route::get('/invoice/delete/{id}', 'InvoiceDelete')->name('invoice.delete');
    Route::get('/invoice/approve/{id}', 'InvoiceApprove')->name('invoice.approve');

    Route::post('/approval/store/{id}', 'ApprovalStore')->name('approval.store');
    Route::get('/print/invoice/list', 'PrintInvoiceList')->name('print.invoice.list');
    Route::get('/print/invoice/{id}', 'PrintInvoice')->name('print.invoice');

    Route::get('/daily/invoice/report', 'DailyInvoiceReport')->name('daily.invoice.report');
    Route::get('/daily/invoice/pdf', 'DailyInvoicePdf')->name('daily.invoice.pdf');


});





// Stock All Route
Route::controller(StockController::class)->group(function () {
    Route::get('/stock/report', 'StockReport')->name('stock.report');
    Route::get('/stock/report/pdf', 'StockReportPdf')->name('stock.report.pdf');

    Route::get('/stock/supplier/wise', 'StockSupplierWise')->name('stock.supplier.wise');
    Route::get('/supplier/wise/pdf', 'SupplierWisePdf')->name('supplier.wise.pdf');
    Route::get('/product/wise/pdf', 'ProductWisePdf')->name('product.wise.pdf');


});




///Permission All Route
Route::controller(RoleController::class)->group(function(){

    Route::get('/all/permission','AllPermission')->name('all.permission');
    Route::get('/add/permission','AddPermission')->name('add.permission');
    Route::post('/store/permission','StorePermission')->name('permission.store');
    Route::get('/edit/permission/{id}','EditPermission')->name('edit.permission');
    Route::post('/update/permission','UpdatePermission')->name('permission.update');
    Route::get('/delete/permission/{id}','DeletePermission')->name('delete.permission');
    //Permission_Group
    Route::get('/all/permissiongroup','AllPermissionGroup')->name('all.permissiongroup');
    Route::get('/add/permissiongroup','AddPermissionGroup')->name('add.permissiongroup');
    Route::post('/store/permissiongroup','StorePermissionGroup')->name('permissiongroup.store');
    Route::get('/edit/permissiongroup/{id}','EditPermissionGroup')->name('edit.permissiongroup');
    Route::post('/update/permissiongroup','UpdatePermissionGroup')->name('permissiongroup.update');
    Route::get('/delete/permissiongroup/{id}','DeletePermissionGroup')->name('delete.permissiongroup');


});

   ///Roles All Route
Route::controller(RoleController::class)->group(function(){

    Route::get('/all/roles-permission-mgt','RolesPermissionMgt')->name('all.roles-permission-mgt');
    Route::get('/all/roles','AllRoles')->name('all.roles');
    Route::get('/add/roles','AddRoles')->name('add.roles');
    Route::post('/store/roles','StoreRoles')->name('roles.store');
    Route::get('/edit/roles/{id}','EditRoles')->name('edit.roles');
Route::post('/update/roles','UpdateRoles')->name('roles.update');
    Route::get('/delete/roles/{id}','DeleteRoles')->name('delete.roles');
});

   ///Add Roles in Permission All Route
Route::controller(RoleController::class)->group(function(){
    Route::get('/add/roles/permission','AddRolesPermission')->name('add.roles.permission');
    Route::post('/role/permission/store','StoreRolesPermission')->name('role.permission.store');
    Route::get('/all/roles/permission','AllRolesPermission')->name('all.roles.permission');
    Route::get('/admin/edit/roles/{id}','AdminEditRoles')->name('admin.edit.roles');
    Route::post('/role/permission/update/{id}','RolePermissionUpdate')->name('role.permission.update');
    Route::get('/admin/delete/roles/{id}','AdminDeleteRoles')->name('admin.delete.roles');
});

   ///Admin User All Route
Route::controller(AdminController::class)->group(function(){
    Route::get('/all/admin','AllAdmin')->name('all.admin');
    Route::get('/add/admin','AddAdmin')->name('add.admin');
    Route::post('/store/admin','StoreAdmin')->name('admin.store');
    Route::get('/edit/admin/{id}','EditAdmin')->name('edit.admin');
    Route::post('/update/admin','UpdateAdmin')->name('admin.update');
    Route::get('/delete/admin/{id}','DeleteAdmin')->name('delete.admin');

    // // Database Backup
    // Route::get('/database/backup','DatabaseBackup')->name('database.backup');
    // Route::get('/backup/now','BackupNow');
    // Route::get('{getFilename}','DownloadDatabase');
    // Route::get('/delete/database/{getFilename}','DeleteDatabase');

});

///PIM Basic Info All Route
Route::controller(BasicInfoController::class)->group(function(){

    Route::get('/all/basicinfo','AllBasicInfo')->name('all.basicinfo');
    Route::get('/add/basicinfo','AddBasicInfo')->name('add.basicinfo');
    Route::post('/store/basicinfo','StoreBasicInfo')->name('basicinfo.store');
    Route::get('/show/basicinfo/{id}', 'ShowBasicInfo')->name('show.basicinfo');
    Route::get('/edit/basicinfo/{id}','EditBasicInfo')->name('edit.basicinfo');
    Route::post('/update/basicinfo','UpdateBasicInfo')->name('basicinfo.update');
    Route::get('/delete/basicinfo/{id}','DeleteBasicInfo')->name('delete.basicinfo');
    Route::get('/pim/report/staffdetailsreport', 'StaffDetailsReport')->name('staffdetailsreport');
    Route::get('/pim/report/show/staffdetailsreport/{id}', 'ShowStaffDetailsReport')->name('showstaffdetailsreport');
});

///PIM Guardian All Route
Route::controller(GuardianController::class)->group(function(){

    Route::get('/all/guardian','AllGuardian')->name('all.guardian');
    Route::get('/add/guardian','AddGuardian')->name('add.guardian');
    Route::post('/store/guardian','StoreGuardian')->name('guardian.store');
    Route::get('/show/guardian/{id}', 'ShowGuardian')->name('show.guardian');
    Route::get('/edit/guardian/{id}','EditGuardian')->name('edit.guardian');
    Route::post('/update/guardian','UpdateGuardian')->name('guardian.update');
    Route::get('/delete/guardian/{id}','DeleteGuardian')->name('delete.guardian');
});

///PIM Nominee All Route
Route::controller(NomineeController::class)->group(function(){

    Route::get('/all/nominee','AllNominee')->name('all.nominee');
    Route::get('/add/nominee','AddNominee')->name('add.nominee');
    Route::post('/store/nominee','StoreNominee')->name('nominee.store');
    Route::get('/show/nominee/{id}', 'ShowNominee')->name('show.nominee');
    Route::get('/edit/nominee/{id}','EditNominee')->name('edit.nominee');
    Route::post('/update/nominee','UpdateNominee')->name('nominee.update');
    Route::get('/delete/nominee/{id}','DeleteNominee')->name('delete.nominee');
});

///PIM Education All Route
Route::controller(EducationController::class)->group(function(){

    Route::get('/all/education','AllEducation')->name('all.education');
    Route::get('/add/education','AddEducation')->name('add.education');
    Route::post('/store/education','StoreEducation')->name('education.store');
    Route::get('/show/education/{id}', 'ShowEducation')->name('show.education');
    Route::get('/edit/education/{id}','EditEducation')->name('edit.education');
    Route::post('/update/education','UpdateEducation')->name('education.update');
    Route::get('/delete/education/{id}','DeleteEducation')->name('delete.education');
});

///PIM Education All Route
Route::controller(CourseController::class)->group(function(){

    Route::get('/all/course','AllCourse')->name('all.course');
    Route::get('/add/course','AddCourse')->name('add.course');
    Route::post('/store/course','StoreCourse')->name('course.store');
    Route::get('/show/course/{id}', 'ShowCourse')->name('show.course');
    Route::get('/edit/course/{id}','EditCourse')->name('edit.course');
    Route::post('/update/course','UpdateCourse')->name('course.update');
    Route::get('/delete/course/{id}','DeleteCourse')->name('delete.course');
});

///PIM Training All Route
Route::controller(TrainingController::class)->group(function(){

    Route::get('/all/training','AllTraining')->name('all.training');
    Route::get('/add/training','AddTraining')->name('add.training');
    Route::post('/store/training','StoreTraining')->name('training.store');
    Route::get('/show/training/{id}', 'ShowTraining')->name('show.training');
    Route::get('/edit/training/{id}','EditTraining')->name('edit.training');
    Route::post('/update/training','UpdateTraining')->name('training.update');
    Route::get('/delete/training/{id}','DeleteTraining')->name('delete.training');
});

///PIM Education All Route
Route::controller(ExperienceController::class)->group(function(){

    Route::get('/all/experience','AllExperience')->name('all.experience');
    Route::get('/add/experience','AddExperience')->name('add.experience');
    Route::post('/store/experience','StoreExperience')->name('experience.store');
    Route::get('/show/experience/{id}', 'ShowExperience')->name('show.experience');
    Route::get('/edit/experience/{id}','EditExperience')->name('edit.experience');
    Route::post('/update/experience','UpdateExperience')->name('experience.update');
    Route::get('/delete/experience/{id}','DeleteExperience')->name('delete.experience');
});

///PIM Education All Route
Route::controller(FamilyBrotherSisterController::class)->group(function(){

    Route::get('/all/brothersister','AllFamilyBrotherSister')->name('all.familybrothersister');
    Route::get('/add/familybrothersister','AddFamilyBrotherSister')->name('add.familybrothersister');
    Route::post('/store/familybrothersister','StoreFamilyBrotherSister')->name('familybrothersister.store');
    Route::get('/show/familybrothersister/{id}', 'ShowFamilyBrotherSister')->name('show.familybrothersister');
    Route::get('/edit/familybrothersister/{id}','EditFamilyBrotherSister')->name('edit.familybrothersister');
    Route::post('/update/familybrothersister','UpdateFamilyBrotherSister')->name('familybrothersister.update');
    Route::get('/delete/familybrothersister/{id}','DeleteFamilyBrotherSister')->name('delete.familybrothersister');
});

///PIM Education All Route
Route::controller(FamilyChildController::class)->group(function(){

    Route::get('/all/child','AllFamilyChild')->name('all.familychild');
    Route::get('/add/familychild','AddFamilyChild')->name('add.familychild');
    Route::post('/store/familychild','StoreFamilyChild')->name('familychild.store');
    Route::get('/show/familychild/{id}', 'ShowFamilyChild')->name('show.familychild');
    Route::get('/edit/familychild/{id}','EditFamilyChild')->name('edit.familychild');
    Route::post('/update/familychild','UpdateFamilyChild')->name('familychild.update');
    Route::get('/delete/familychild/{id}','DeleteFamilyChild')->name('delete.familychild');
});

///PIM Family Spouce All Route
Route::controller(FamilySpouceController::class)->group(function(){

    Route::get('/all/familyspouce','AllFamilySpouce')->name('all.familyspouce');
    Route::get('/add/familyspouce','AddFamilySpouce')->name('add.familyspouce');
    Route::post('/store/familyspouce','StoreFamilySpouce')->name('familyspouce.store');
    Route::get('/show/familyspouce/{id}', 'ShowFamilySpouce')->name('show.familyspouce');
    Route::get('/edit/familyspouce/{id}','EditFamilySpouce')->name('edit.familyspouce');
    Route::post('/update/familyspouce','UpdateFamilySpouce')->name('familyspouce.update');
    Route::get('/delete/familyspouce/{id}','DeleteFamilySpouce')->name('delete.familyspouce');
});
///PIM Relative StaffAll Route
Route::controller(RelativeStaffController::class)->group(function(){

    Route::get('/all/relativestaff','AllRelativeStaff')->name('all.relativestaff');
    Route::get('/add/relativestaff','AddRelativeStaff')->name('add.relativestaff');
    Route::post('/store/relativestaff','StoreRelativeStaff')->name('relativestaff.store');
    Route::get('/show/relativestaff/{id}', 'ShowRelativeStaff')->name('show.relativestaff');
    Route::get('/edit/relativestaff/{id}','EditRelativeStaff')->name('edit.relativestaff');
    Route::post('/update/relativestaff','UpdateRelativeStaff')->name('relativestaff.update');
    Route::get('/delete/relativestaff/{id}','DeleteRelativeStaff')->name('delete.relativestaff');
});

///PIM Yearly Health Checkup All Route
Route::controller(YearlyHealthCheckUpController::class)->group(function(){

    Route::get('/all/yearlyhealthcheckup','AllYearlyHealthCheckUp')->name('all.yearlyhealthcheckup');
    Route::get('/add/yearlyhealthcheckup','AddYearlyHealthCheckUp')->name('add.yearlyhealthcheckup');
    Route::post('/store/yearlyhealthcheckup','StorYearlyHealthCheckUp')->name('yearlyhealthcheckup.store');
    Route::get('/show/yearlyhealthcheckup/{id}', 'ShowYearlyHealthCheckUp')->name('show.yearlyhealthcheckup');
    Route::get('/edit/yearlyhealthcheckup/{id}','EditYearlyHealthCheckUp')->name('edit.yearlyhealthcheckup');
    Route::post('/update/yearlyhealthcheckup','UpdateYearlyHealthCheckUp')->name('yearlyhealthcheckup.update');
    Route::get('/delete/yearlyhealthcheckup/{id}','DeleteYearlyHealthCheckUp')->name('delete.yearlyhealthcheckup');
});

///PIM PF Check List All Route
Route::controller(PFCheckListController::class)->group(function(){

    Route::get('/all/pfchecklist','AllPFCheckList')->name('all.pfchecklist');
    Route::get('/add/pfchecklist','AddPFCheckList')->name('add.pfchecklist');
    Route::post('/store/pfchecklist','StorPFCheckList')->name('pfchecklist.store');
    Route::get('/show/pfchecklist/{id}', 'ShowPFCheckList')->name('show.pfchecklist');
    Route::get('/edit/pfchecklist/{id}','EditPFCheckList')->name('edit.pfchecklist');
    Route::post('/update/pfchecklist','UpdatePFCheckList')->name('pfchecklist.update');
    Route::get('/delete/pfchecklist/{id}','DeletePFCheckList')->name('delete.pfchecklist');
});



Route::controller(PIMReportController::class)->group(function () {
    Route::get('/pim/report/all', 'AllPIMReport')->name('all.pimreport');

});

// Route::controller(StaffDetailsReportController::class)->group(function () {
//     Route::get('/pim/report/staffdetailsreport', 'StaffDetailsReport')->name('staffdetailsreport');
//     // Route::get('/pim/report/show/staffdetailsreport/{id}', 'ShowStaffDetailsReport')->name('showstaffdetailsreport');
//     Route::get('/pim/report/show/staffdetailsreport/', 'ShowStaffDetailsReport')->name('showstaffdetailsreport');

// });










 }); // End Group Middleware




// Default All Route
Route::controller(DefaultController::class)->group(function () {
    Route::get('/get-category', 'GetCategory')->name('get-category');
    Route::get('/get-product', 'GetProduct')->name('get-product');
    Route::get('/check-product', 'GetStock')->name('check-product-stock');
});


Route::get('/efile', function () {
    return view('efile.index'); })->middleware(['auth'])->name('efile');


Route::get('/dashboard', function () {
    return view('admin.index');
})->middleware(['auth'])->name('dashboard');
Route::get('latestreport', function () {
    return view('admin.index');
})->middleware(['auth'])->name('latestreport');

// Route::get('/efile', function () {
//     return view('efile.index');
// })->middleware(['auth'])->name('efile');

require __DIR__.'/auth.php';



