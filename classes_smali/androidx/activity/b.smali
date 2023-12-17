.class public final synthetic Landroidx/activity/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/activity/b;->a:I

    .line 3
    iput-object p1, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 1
    iget v0, p0, Landroidx/activity/b;->a:I

    .line 3
    packed-switch v0, :pswitch_data_180

    .line 6
    goto/16 :goto_177

    .line 8
    :pswitch_7  #0x17
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 10
    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 12
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->a(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    .line 15
    return-void

    .line 16
    :pswitch_f  #0x16
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 18
    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    .line 20
    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->a(Lmiuix/appcompat/widget/Spinner;)V

    .line 23
    return-void

    .line 24
    :pswitch_17  #0x15
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 26
    check-cast v0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 28
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->a(Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;)V

    .line 31
    return-void

    .line 32
    :pswitch_1f  #0x14
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 34
    check-cast v0, Lcom/miui/maml/elements/WebViewScreenElement;

    .line 36
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->a(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 39
    return-void

    .line 40
    :pswitch_27  #0x13
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 42
    check-cast v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 44
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->a(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 47
    return-void

    .line 48
    :pswitch_2f  #0x12
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 50
    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;

    .line 52
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;->c(Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;)V

    .line 55
    return-void

    .line 56
    :pswitch_37  #0x11
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 58
    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadSdCardFileDetailFragment;

    .line 60
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadSdCardFileDetailFragment;->c(Lcom/android/fileexplorer/pad/fragment/PadSdCardFileDetailFragment;)V

    .line 63
    return-void

    .line 64
    :pswitch_3f  #0x10
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 66
    check-cast v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 68
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->a(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)V

    .line 71
    return-void

    .line 72
    :pswitch_47  #0xf
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 74
    check-cast v0, Landroid/widget/CheckBox;

    .line 76
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->b(Landroid/widget/CheckBox;)V

    .line 79
    return-void

    .line 80
    :pswitch_4f  #0xe
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 82
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;

    .line 84
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;->b(Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;)V

    .line 87
    return-void

    .line 88
    :pswitch_57  #0xd
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 90
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 92
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->b(Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;)V

    .line 95
    return-void

    .line 96
    :pswitch_5f  #0xc
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 98
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;

    .line 100
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;->b(Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;)V

    .line 103
    return-void

    .line 104
    :pswitch_67  #0xb
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 106
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;

    .line 108
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;->b(Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;)V

    .line 111
    return-void

    .line 112
    :pswitch_6f  #0xa
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 114
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 116
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->a(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;)V

    .line 119
    return-void

    .line 120
    :pswitch_77  #0x9
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 122
    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 124
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->d(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    .line 127
    return-void

    .line 128
    :pswitch_7f  #0x8
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 130
    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 132
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->c(Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;)V

    .line 135
    return-void

    .line 136
    :pswitch_87  #0x7
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 138
    check-cast v0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    .line 140
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->c(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)V

    .line 143
    return-void

    .line 144
    :pswitch_8f  #0x6
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 146
    check-cast v0, Lcom/android/fileexplorer/fragment/FileFragment;

    .line 148
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileFragment;->b(Lcom/android/fileexplorer/fragment/FileFragment;)V

    .line 151
    return-void

    .line 152
    :pswitch_97  #0x5
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 154
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    .line 156
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->b(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;)V

    .line 159
    return-void

    .line 160
    :pswitch_9f  #0x4
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 162
    check-cast v0, Lcom/android/cloud/fragment/CloudFileFragment;

    .line 164
    invoke-static {v0}, Lcom/android/cloud/fragment/CloudFileFragment;->b(Lcom/android/cloud/fragment/CloudFileFragment;)V

    .line 167
    return-void

    .line 168
    :pswitch_a7  #0x3
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 170
    check-cast v0, Landroid/app/Activity;

    .line 172
    sget v1, Ld0/a;->a:I

    .line 174
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_15e

    .line 180
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    const/16 v2, 0x1c

    .line 184
    const/4 v3, 0x0

    .line 185
    const/4 v4, 0x1

    .line 186
    if-lt v1, v2, :cond_c2

    .line 188
    sget-object v1, Ld0/e;->a:Ljava/lang/Class;

    .line 190
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 193
    goto/16 :goto_14b

    .line 195
    :cond_c2
    sget-object v2, Ld0/e;->a:Ljava/lang/Class;

    .line 197
    const/16 v2, 0x1b

    .line 199
    const/16 v5, 0x1a

    .line 201
    if-eq v1, v5, :cond_cf

    .line 203
    if-ne v1, v2, :cond_cd

    .line 205
    goto :goto_cf

    .line 206
    :cond_cd
    move v6, v3

    .line 207
    goto :goto_d0

    .line 208
    :cond_cf
    :goto_cf
    move v6, v4

    .line 209
    :goto_d0
    if-eqz v6, :cond_d8

    .line 211
    sget-object v6, Ld0/e;->f:Ljava/lang/reflect/Method;

    .line 213
    if-nez v6, :cond_d8

    .line 215
    goto/16 :goto_159

    .line 217
    :cond_d8
    sget-object v6, Ld0/e;->e:Ljava/lang/reflect/Method;

    .line 219
    if-nez v6, :cond_e2

    .line 221
    sget-object v6, Ld0/e;->d:Ljava/lang/reflect/Method;

    .line 223
    if-nez v6, :cond_e2

    .line 225
    goto/16 :goto_159

    .line 227
    :cond_e2
    :try_start_e2
    sget-object v6, Ld0/e;->c:Ljava/lang/reflect/Field;

    .line 229
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-result-object v6

    .line 233
    if-nez v6, :cond_ec

    .line 235
    goto/16 :goto_159

    .line 237
    :cond_ec
    sget-object v7, Ld0/e;->b:Ljava/lang/reflect/Field;

    .line 239
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    move-result-object v7

    .line 243
    if-nez v7, :cond_f5

    .line 245
    goto :goto_159

    .line 246
    :cond_f5
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 249
    move-result-object v8

    .line 250
    new-instance v9, Ld0/e$a;

    .line 252
    invoke-direct {v9, v0}, Ld0/e$a;-><init>(Landroid/app/Activity;)V

    .line 255
    invoke-virtual {v8, v9}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 258
    sget-object v10, Ld0/e;->g:Landroid/os/Handler;

    .line 260
    new-instance v11, Ld0/b;

    .line 262
    invoke-direct {v11, v9, v6}, Ld0/b;-><init>(Ld0/e$a;Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10b
    .catchall {:try_start_e2 .. :try_end_10b} :catchall_159

    .line 268
    if-eq v1, v5, :cond_112

    .line 270
    if-ne v1, v2, :cond_110

    .line 272
    goto :goto_112

    .line 273
    :cond_110
    move v1, v3

    .line 274
    goto :goto_113

    .line 275
    :cond_112
    :goto_112
    move v1, v4

    .line 276
    :goto_113
    if-eqz v1, :cond_140

    .line 278
    :try_start_115
    sget-object v1, Ld0/e;->f:Ljava/lang/reflect/Method;

    .line 280
    const/16 v2, 0x9

    .line 282
    new-array v2, v2, [Ljava/lang/Object;

    .line 284
    aput-object v6, v2, v3

    .line 286
    const/4 v5, 0x0

    .line 287
    aput-object v5, v2, v4

    .line 289
    const/4 v6, 0x2

    .line 290
    aput-object v5, v2, v6

    .line 292
    const/4 v6, 0x3

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    move-result-object v11

    .line 297
    aput-object v11, v2, v6

    .line 299
    const/4 v6, 0x4

    .line 300
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 302
    aput-object v11, v2, v6

    .line 304
    const/4 v6, 0x5

    .line 305
    aput-object v5, v2, v6

    .line 307
    const/4 v6, 0x6

    .line 308
    aput-object v5, v2, v6

    .line 310
    const/4 v5, 0x7

    .line 311
    aput-object v11, v2, v5

    .line 313
    const/16 v5, 0x8

    .line 315
    aput-object v11, v2, v5

    .line 317
    invoke-virtual {v1, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    goto :goto_143

    .line 321
    :cond_140
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V
    :try_end_143
    .catchall {:try_start_115 .. :try_end_143} :catchall_14d

    .line 324
    :goto_143
    :try_start_143
    new-instance v1, Ld0/c;

    .line 326
    invoke-direct {v1, v8, v9}, Ld0/c;-><init>(Landroid/app/Application;Ld0/e$a;)V

    .line 329
    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    :goto_14b
    move v3, v4

    .line 333
    goto :goto_159

    .line 334
    :catchall_14d
    move-exception v1

    .line 335
    sget-object v2, Ld0/e;->g:Landroid/os/Handler;

    .line 337
    new-instance v4, Ld0/c;

    .line 339
    invoke-direct {v4, v8, v9}, Ld0/c;-><init>(Landroid/app/Application;Ld0/e$a;)V

    .line 342
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    throw v1
    :try_end_159
    .catchall {:try_start_143 .. :try_end_159} :catchall_159

    .line 346
    :catchall_159
    :goto_159
    if-nez v3, :cond_15e

    .line 348
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 351
    :cond_15e
    return-void

    .line 352
    :pswitch_15f  #0x2
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 354
    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    .line 356
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    .line 359
    return-void

    .line 360
    :pswitch_167  #0x1
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 362
    check-cast v0, Landroidx/activity/g;

    .line 364
    invoke-static {v0}, Landroidx/activity/g;->a(Landroidx/activity/g;)V

    .line 367
    return-void

    .line 368
    :pswitch_16f  #0x0
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 370
    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 372
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    .line 375
    return-void

    .line 376
    :goto_177
    iget-object v0, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 378
    check-cast v0, Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 380
    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->a(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    .line 383
    return-void

    .line 384
    nop

    .line 385
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
