.class Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "ExpandableGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$2;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$2;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 6
    move-result p1

    .line 7
    return p1
.end method
