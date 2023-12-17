.class Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/OriginalViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ImagePreviewActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$302(Lcom/android/fileexplorer/activity/ImagePreviewActivity;I)I

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$100(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$602(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfo;

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$700(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V

    return-void
.end method
