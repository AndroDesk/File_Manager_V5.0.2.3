.class Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "SecondaryTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabClickListener"
.end annotation


# instance fields
.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;->mRefs:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;->mRefs:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    move-object v1, p1

    .line 17
    check-cast v1, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    .line 19
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->getTab()Landroidx/appcompat/app/a$d;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroidx/appcompat/app/a$d;->select()V

    .line 26
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->access$300(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)I

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    :goto_1f
    if-ge v4, v2, :cond_30

    .line 34
    invoke-static {v0, v4}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->access$400(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 37
    move-result-object v5

    .line 38
    if-ne v5, p1, :cond_29

    .line 40
    const/4 v6, 0x1

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v6, v3

    .line 43
    :goto_2a
    invoke-virtual {v5, v6}, Landroid/view/View;->setActivated(Z)V

    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 48
    goto :goto_1f

    .line 49
    :cond_30
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->access$500(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;)Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_39

    .line 55
    invoke-static {v1, v3}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->access$100(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;Z)V

    .line 58
    :cond_39
    return-void
.end method
