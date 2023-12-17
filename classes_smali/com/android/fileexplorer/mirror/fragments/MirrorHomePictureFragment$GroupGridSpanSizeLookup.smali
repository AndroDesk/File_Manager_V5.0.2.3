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
.method private constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_34

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    move-result v0

    .line 24
    if-gt v0, p1, :cond_1a

    .line 26
    goto :goto_34

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 29
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 39
    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    .line 41
    const/4 v0, 0x6

    .line 42
    if-eq v0, p1, :cond_31

    .line 44
    const/16 v0, 0x9

    .line 46
    if-ne v0, p1, :cond_30

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    return v1

    .line 50
    :cond_31
    :goto_31
    const/16 p1, 0x8

    .line 52
    return p1

    .line 53
    :cond_34
    :goto_34
    return v1
.end method
