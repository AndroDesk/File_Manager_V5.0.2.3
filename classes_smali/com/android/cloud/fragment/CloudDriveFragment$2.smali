.class Lcom/android/cloud/fragment/CloudDriveFragment$2;
.super Ljava/lang/Object;
.source "CloudDriveFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/CloudDriveFragment;->setListGridMode(Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

.field public final synthetic val$imageView:Landroid/widget/ImageView;

.field public final synthetic val$locateInActionBar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/CloudDriveFragment;Landroid/widget/ImageView;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    iput-object p2, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->val$imageView:Landroid/widget/ImageView;

    iput-boolean p3, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->val$locateInActionBar:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->val$imageView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->val$locateInActionBar:Z

    if-eqz v1, :cond_c

    const v2, 0x7f08022b

    goto :goto_f

    :cond_c
    const v2, 0x7f08023c

    :goto_f
    if-eqz v1, :cond_15

    const v1, 0x7f08022e

    goto :goto_18

    :cond_15
    const v1, 0x7f08023d

    :goto_18
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onViewTypeChange(Landroid/widget/ImageView;II)V

    return-void
.end method
