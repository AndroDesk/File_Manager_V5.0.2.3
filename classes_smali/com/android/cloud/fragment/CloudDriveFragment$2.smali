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
.method public constructor <init>(Lcom/android/cloud/fragment/CloudDriveFragment;Landroid/widget/ImageView;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 3
    iput-object p2, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->val$imageView:Landroid/widget/ImageView;

    .line 5
    iput-boolean p3, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->val$locateInActionBar:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 3
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->val$imageView:Landroid/widget/ImageView;

    .line 5
    iget-boolean v1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$2;->val$locateInActionBar:Z

    .line 7
    if-eqz v1, :cond_c

    .line 9
    const v2, 0x7f08022b

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    const v2, 0x7f08023c

    .line 16
    :goto_f
    if-eqz v1, :cond_15

    .line 18
    const v1, 0x7f08022e

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    const v1, 0x7f08023d

    .line 25
    :goto_18
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onViewTypeChange(Landroid/widget/ImageView;II)V

    .line 28
    return-void
.end method
