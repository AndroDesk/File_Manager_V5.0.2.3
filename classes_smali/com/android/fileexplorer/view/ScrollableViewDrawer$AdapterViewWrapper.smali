.class Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;
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
    name = "AdapterViewWrapper"
.end annotation


# instance fields
.field private iAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    .line 6
    return-void
.end method


# virtual methods
.method public canScroll()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 6
    move-result v0

    .line 7
    const-string v1, "ScrollableViewDrawer"

    .line 9
    const/4 v2, 0x1

    .line 10
    if-lez v0, :cond_20

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v4, "canScrollDown true first visible pos = "

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return v2

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 38
    move-result v0

    .line 39
    iget-object v3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    .line 41
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x0

    .line 46
    move v5, v4

    .line 47
    :goto_2e
    if-ge v5, v3, :cond_54

    .line 49
    iget-object v6, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    .line 51
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 58
    move-result v6

    .line 59
    if-ge v6, v0, :cond_51

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v3, "canScrollDown true i = "

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v2

    .line 82
    :cond_51
    add-int/lit8 v5, v5, 0x1

    .line 84
    goto :goto_2e

    .line 85
    :cond_54
    return v4
.end method
