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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Landroidx/appcompat/app/s;->a:I

    iput-object p2, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Landroidx/appcompat/app/s;->a:I

    const-string v1, "$violation"

    packed-switch v0, :pswitch_data_c8

    :pswitch_7  #0x1
    goto/16 :goto_bb

    :pswitch_9  #0xa
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView;

    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->a(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$b;)V

    return-void

    :pswitch_15  #0x9
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V

    return-void

    :pswitch_21  #0x8
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->f(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/content/Context;)V

    return-void

    :pswitch_2d  #0x7
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/view/FileListItem;

    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/FileListItem;->a(Lcom/android/fileexplorer/view/FileListItem;Lcom/android/fileexplorer/model/FileInfo;)V

    return-void

    :pswitch_39  #0x6
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/model/ContentFile;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->a(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V

    return-void

    :pswitch_45  #0x5
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/window/layout/l$b;

    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/window/layout/r;

    const-string v2, "this$0"

    invoke-static {v0, v2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$newLayoutInfo"

    invoke-static {v1, v2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/window/layout/l$b;->c:Ll0/a;

    invoke-interface {v0, v1}, Ll0/a;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_5d  #0x4
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/strictmode/Violation;

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    invoke-static {v2, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy violation with PENALTY_DEATH in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentStrictMode"

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v2

    :pswitch_81  #0x3
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    iget-object v2, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/strictmode/Violation;

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    const-string v3, "$policy"

    invoke-static {v0, v3}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0

    :pswitch_98  #0x2
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->b(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V

    return-void

    :pswitch_a4  #0x0
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/t$a;

    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_af
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b6

    invoke-virtual {v0}, Landroidx/appcompat/app/t$a;->a()V

    return-void

    :catchall_b6
    move-exception v1

    invoke-virtual {v0}, Landroidx/appcompat/app/t$a;->a()V

    throw v1

    :goto_bb
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/EditDialogFragment;

    iget-object v1, p0, Landroidx/appcompat/app/s;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v0, v1}, Lmiuix/navigator/EditDialogFragment;->c(Lmiuix/navigator/EditDialogFragment;Landroid/widget/EditText;)V

    return-void

    nop

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
