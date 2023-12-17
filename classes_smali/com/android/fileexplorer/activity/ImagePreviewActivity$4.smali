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
.method public constructor <init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    .line 3
    invoke-static {v0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$302(Lcom/android/fileexplorer/activity/ImagePreviewActivity;I)I

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$100(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    invoke-static {v0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$602(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfo;

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    .line 23
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$700(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V

    .line 26
    return-void
.end method
