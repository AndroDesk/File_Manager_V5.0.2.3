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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$102(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;I)I

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$202(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
