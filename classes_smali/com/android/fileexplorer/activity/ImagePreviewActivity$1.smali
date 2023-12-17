.class Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Ll2/c;


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
        "Ll2/c<",
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

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;->accept(Ljava/util/HashSet;)V

    return-void
.end method

.method public accept(Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$002(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Ljava/util/HashSet;)Ljava/util/HashSet;

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$200(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$100(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$200(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Li1/a;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$400(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lmiuix/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$300(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    return-void
.end method
