.class Lcom/android/fileexplorer/activity/ImagePreviewActivity$2;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Li2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ImagePreviewActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li2/g<",
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;>;"
    }
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

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$2;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Li2/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/f<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$2;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$100(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileInfo(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {p1, v0}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Li2/b;->onComplete()V

    return-void
.end method
