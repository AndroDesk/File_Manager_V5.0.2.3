.class public final synthetic Landroidx/appcompat/app/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput p1, p0, Landroidx/appcompat/app/s;->a:I

    .line 3
    iput-object p2, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/appcompat/app/s;->a:I

    .line 3
    const-string v1, "$violation"

    .line 5
    packed-switch v0, :pswitch_data_c8

    .line 8
    :pswitch_7  #0x1
    goto/16 :goto_bb

    .line 10
    :pswitch_9  #0xa
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 12
    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 14
    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 16
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 18
    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->a(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$b;)V

    .line 21
    return-void

    .line 22
    :pswitch_15  #0x9
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 24
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 26
    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 28
    check-cast v1, Landroid/content/Context;

    .line 30
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V

    .line 33
    return-void

    .line 34
    :pswitch_21  #0x8
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 36
    check-cast v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 38
    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 40
    check-cast v1, Landroid/content/Context;

    .line 42
    invoke-static {v0, v1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->f(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/content/Context;)V

    .line 45
    return-void

    .line 46
    :pswitch_2d  #0x7
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 48
    check-cast v0, Lcom/android/fileexplorer/view/FileListItem;

    .line 50
    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 52
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 54
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/FileListItem;->a(Lcom/android/fileexplorer/view/FileListItem;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 57
    return-void

    .line 58
    :pswitch_39  #0x6
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 60
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 62
    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 64
    check-cast v1, Lcom/android/fileexplorer/model/ContentFile;

    .line 66
    invoke-static {v0, v1}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->a(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V

    .line 69
    return-void

    .line 70
    :pswitch_45  #0x5
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 72
    check-cast v0, Landroidx/window/layout/l$b;

    .line 74
    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 76
    check-cast v1, Landroidx/window/layout/r;

    .line 78
    const-string v2, "this$0"

    .line 80
    invoke-static {v0, v2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string v2, "$newLayoutInfo"

    .line 85
    invoke-static {v1, v2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, v0, Landroidx/window/layout/l$b;->c:Ll0/a;

    .line 90
    invoke-interface {v0, v1}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 93
    return-void

    .line 94
    :pswitch_5d  #0x4
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 96
    check-cast v0, Ljava/lang/String;

    .line 98
    iget-object v2, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 100
    check-cast v2, Landroidx/fragment/app/strictmode/Violation;

    .line 102
    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 104
    invoke-static {v2, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v3, "Policy violation with PENALTY_DEATH in "

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    const-string v1, "FragmentStrictMode"

    .line 126
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    throw v2

    .line 130
    :pswitch_81  #0x3
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 132
    check-cast v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 134
    iget-object v2, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 136
    check-cast v2, Landroidx/fragment/app/strictmode/Violation;

    .line 138
    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 140
    const-string v3, "$policy"

    .line 142
    invoke-static {v0, v3}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {v2, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    const/4 v0, 0x0

    .line 152
    throw v0

    .line 153
    :pswitch_98  #0x2
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 155
    check-cast v0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 157
    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 159
    check-cast v1, Landroid/graphics/Typeface;

    .line 161
    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->b(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V

    .line 164
    return-void

    .line 165
    :pswitch_a4  #0x0
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 167
    check-cast v0, Landroidx/appcompat/app/t$a;

    .line 169
    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 171
    check-cast v1, Ljava/lang/Runnable;

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    :try_start_af
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b6

    .line 179
    invoke-virtual {v0}, Landroidx/appcompat/app/t$a;->a()V

    .line 182
    return-void

    .line 183
    :catchall_b6
    move-exception v1

    .line 184
    invoke-virtual {v0}, Landroidx/appcompat/app/t$a;->a()V

    .line 187
    throw v1

    .line 188
    :goto_bb
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    .line 190
    check-cast v0, Lmiuix/navigator/EditDialogFragment;

    .line 192
    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    .line 194
    check-cast v1, Landroid/widget/EditText;

    .line 196
    invoke-static {v0, v1}, Lmiuix/navigator/EditDialogFragment;->c(Lmiuix/navigator/EditDialogFragment;Landroid/widget/EditText;)V

    .line 199
    return-void

    .line 200
    nop

    .line 201
    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_a4  #00000000
        :pswitch_7  #00000001
        :pswitch_98  #00000002
        :pswitch_81  #00000003
        :pswitch_5d  #00000004
        :pswitch_45  #00000005
        :pswitch_39  #00000006
        :pswitch_2d  #00000007
        :pswitch_21  #00000008
        :pswitch_15  #00000009
        :pswitch_9  #0000000a
    .end packed-switch
.end method
