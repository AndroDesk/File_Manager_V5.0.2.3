.class Lcom/android/fileexplorer/view/ScrollableViewDrawer$ScrollViewWrapper;
.super Ljava/lang/Object;
.source "ScrollableViewDrawer.java"

# interfaces
.implements Lcom/android/fileexplorer/view/ScrollableViewDrawer$IScrollableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/ScrollableViewDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollViewWrapper"
.end annotation


# instance fields
.field private iScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$ScrollViewWrapper;->iScrollView:Landroid/widget/ScrollView;

    .line 6
    return-void
.end method


# virtual methods
.method public canScroll()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$ScrollViewWrapper;->iScrollView:Landroid/widget/ScrollView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method
