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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/ImagePreviewFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_11

    instance-of v0, p1, Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->toggleChangeActionBarView()V

    :cond_11
    return-void
.end method
