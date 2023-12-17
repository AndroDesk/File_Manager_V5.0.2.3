.class Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;
.super Landroidx/fragment/app/z;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/activity/ImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImagPreviewAdapter"
.end annotation


# instance fields
.field private currentFragment:Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-direct {p0, p2}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->imageList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentImagePreviewFragment()Lcom/android/fileexplorer/fragment/ImagePreviewFragment;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->currentFragment:Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    return-object v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->imageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    const-string v1, "image_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    move-result-object p1

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->imageList:Ljava/util/List;

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5

    move-object v0, p3

    check-cast v0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->currentFragment:Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/z;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
