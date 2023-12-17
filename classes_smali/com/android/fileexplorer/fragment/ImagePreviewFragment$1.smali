.class Lcom/android/fileexplorer/fragment/ImagePreviewFragment$1;
.super Ljava/lang/Object;
.source "ImagePreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/ImagePreviewFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/ImagePreviewFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_11

    .line 9
    instance-of v0, p1, Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    .line 11
    if-eqz v0, :cond_11

    .line 13
    check-cast p1, Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    .line 15
    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->toggleChangeActionBarView()V

    .line 18
    :cond_11
    return-void
.end method
