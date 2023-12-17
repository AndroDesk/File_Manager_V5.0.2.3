.class Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "MirrorHomePictureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupGridSpanSizeLookup"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1a

    goto :goto_34

    :cond_1a
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    const/4 v0, 0x6

    if-eq v0, p1, :cond_31

    const/16 v0, 0x9

    if-ne v0, p1, :cond_30

    goto :goto_31

    :cond_30
    return v1

    :cond_31
    :goto_31
    const/16 p1, 0x8

    return p1

    :cond_34
    :goto_34
    return v1
.end method
