.class Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 11
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTab()Landroidx/appcompat/app/a$d;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 1
    if-nez p2, :cond_10

    .line 3
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/appcompat/app/a$d;

    .line 11
    const/4 p3, 0x1

    .line 12
    invoke-static {p2, p1, p3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->access$200(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Landroidx/appcompat/app/a$d;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 15
    move-result-object p2

    .line 16
    goto :goto_1c

    .line 17
    :cond_10
    move-object p3, p2

    .line 18
    check-cast p3, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 20
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroidx/appcompat/app/a$d;

    .line 26
    invoke-virtual {p3, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->bindTab(Landroidx/appcompat/app/a$d;)V

    .line 29
    :goto_1c
    return-object p2
.end method
