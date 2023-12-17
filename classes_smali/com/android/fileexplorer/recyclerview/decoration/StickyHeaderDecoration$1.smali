.class Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "StickyHeaderDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 6
    const/4 v1, -0x2

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$102(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;I)I

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$202(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Landroid/view/View;)Landroid/view/View;

    .line 16
    return-void
.end method
