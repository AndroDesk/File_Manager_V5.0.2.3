.class public final synthetic Landroidx/activity/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Landroidx/activity/b;->a:I

    iput-object p1, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    iget v0, p0, Landroidx/activity/b;->a:I

    packed-switch v0, :pswitch_data_180

    goto/16 :goto_177

    :pswitch_7  #0x17
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->a(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    return-void

    :pswitch_f  #0x16
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->a(Lmiuix/appcompat/widget/Spinner;)V

    return-void

    :pswitch_17  #0x15
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->a(Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;)V

    return-void

    :pswitch_1f  #0x14
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->a(Lcom/miui/maml/elements/WebViewScreenElement;)V

    return-void

    :pswitch_27  #0x13
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->a(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    return-void

    :pswitch_2f  #0x12
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;->c(Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;)V

    return-void

    :pswitch_37  #0x11
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadSdCardFileDetailFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadSdCardFileDetailFragment;->c(Lcom/android/fileexplorer/pad/fragment/PadSdCardFileDetailFragment;)V

    return-void

    :pswitch_3f  #0x10
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->a(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)V

    return-void

    :pswitch_47  #0xf
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->b(Landroid/widget/CheckBox;)V

    return-void

    :pswitch_4f  #0xe
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;->b(Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;)V

    return-void

    :pswitch_57  #0xd
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->b(Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;)V

    return-void

    :pswitch_5f  #0xc
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;->b(Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;)V

    return-void

    :pswitch_67  #0xb
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;->b(Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;)V

    return-void

    :pswitch_6f  #0xa
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->a(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;)V

    return-void

    :pswitch_77  #0x9
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->d(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    return-void

    :pswitch_7f  #0x8
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->c(Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;)V

    return-void

    :pswitch_87  #0x7
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->c(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)V

    return-void

    :pswitch_8f  #0x6
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileFragment;->b(Lcom/android/fileexplorer/fragment/FileFragment;)V

    return-void

    :pswitch_97  #0x5
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->b(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;)V

    return-void

    :pswitch_9f  #0x4
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/cloud/fragment/CloudFileFragment;

    invoke-static {v0}, Lcom/android/cloud/fragment/CloudFileFragment;->b(Lcom/android/cloud/fragment/CloudFileFragment;)V

    return-void

    :pswitch_a7  #0x3
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    sget v1, Ld0/a;->a:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_15e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_c2

    sget-object v1, Ld0/e;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_14b

    :cond_c2
    sget-object v2, Ld0/e;->a:Ljava/lang/Class;

    const/16 v2, 0x1b

    const/16 v5, 0x1a

    if-eq v1, v5, :cond_cf

    if-ne v1, v2, :cond_cd

    goto :goto_cf

    :cond_cd
    move v6, v3

    goto :goto_d0

    :cond_cf
    :goto_cf
    move v6, v4

    :goto_d0
    if-eqz v6, :cond_d8

    sget-object v6, Ld0/e;->f:Ljava/lang/reflect/Method;

    if-nez v6, :cond_d8

    goto/16 :goto_159

    :cond_d8
    sget-object v6, Ld0/e;->e:Ljava/lang/reflect/Method;

    if-nez v6, :cond_e2

    sget-object v6, Ld0/e;->d:Ljava/lang/reflect/Method;

    if-nez v6, :cond_e2

    goto/16 :goto_159

    :cond_e2
    :try_start_e2
    sget-object v6, Ld0/e;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_ec

    goto/16 :goto_159

    :cond_ec
    sget-object v7, Ld0/e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f5

    goto :goto_159

    :cond_f5
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    new-instance v9, Ld0/e$a;

    invoke-direct {v9, v0}, Ld0/e$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v8, v9}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v10, Ld0/e;->g:Landroid/os/Handler;

    new-instance v11, Ld0/b;

    invoke-direct {v11, v9, v6}, Ld0/b;-><init>(Ld0/e$a;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10b
    .catchall {:try_start_e2 .. :try_end_10b} :catchall_159

    if-eq v1, v5, :cond_112

    if-ne v1, v2, :cond_110

    goto :goto_112

    :cond_110
    move v1, v3

    goto :goto_113

    :cond_112
    :goto_112
    move v1, v4

    :goto_113
    if-eqz v1, :cond_140

    :try_start_115
    sget-object v1, Ld0/e;->f:Ljava/lang/reflect/Method;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    const/4 v5, 0x0

    aput-object v5, v2, v4

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    const/4 v6, 0x4

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v11, v2, v6

    const/4 v6, 0x5

    aput-object v5, v2, v6

    const/4 v6, 0x6

    aput-object v5, v2, v6

    const/4 v5, 0x7

    aput-object v11, v2, v5

    const/16 v5, 0x8

    aput-object v11, v2, v5

    invoke-virtual {v1, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_143

    :cond_140
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V
    :try_end_143
    .catchall {:try_start_115 .. :try_end_143} :catchall_14d

    :goto_143
    :try_start_143
    new-instance v1, Ld0/c;

    invoke-direct {v1, v8, v9}, Ld0/c;-><init>(Landroid/app/Application;Ld0/e$a;)V

    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14b
    move v3, v4

    goto :goto_159

    :catchall_14d
    move-exception v1

    sget-object v2, Ld0/e;->g:Landroid/os/Handler;

    new-instance v4, Ld0/c;

    invoke-direct {v4, v8, v9}, Ld0/c;-><init>(Landroid/app/Application;Ld0/e$a;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v1
    :try_end_159
    .catchall {:try_start_143 .. :try_end_159} :catchall_159

    :catchall_159
    :goto_159
    if-nez v3, :cond_15e

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_15e
    return-void

    :pswitch_15f  #0x2
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    return-void

    :pswitch_167  #0x1
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/g;

    invoke-static {v0}, Landroidx/activity/g;->a(Landroidx/activity/g;)V

    return-void

    :pswitch_16f  #0x0
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    return-void

    :goto_177
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->a(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    return-void

    nop

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_16f  #00000000
        :pswitch_167  #00000001
        :pswitch_15f  #00000002
        :pswitch_a7  #00000003
        :pswitch_9f  #00000004
        :pswitch_97  #00000005
        :pswitch_8f  #00000006
        :pswitch_87  #00000007
        :pswitch_7f  #00000008
        :pswitch_77  #00000009
        :pswitch_6f  #0000000a
        :pswitch_67  #0000000b
        :pswitch_5f  #0000000c
        :pswitch_57  #0000000d
        :pswitch_4f  #0000000e
        :pswitch_47  #0000000f
        :pswitch_3f  #00000010
        :pswitch_37  #00000011
        :pswitch_2f  #00000012
        :pswitch_27  #00000013
        :pswitch_1f  #00000014
        :pswitch_17  #00000015
        :pswitch_f  #00000016
        :pswitch_7  #00000017
    .end packed-switch
.end method
