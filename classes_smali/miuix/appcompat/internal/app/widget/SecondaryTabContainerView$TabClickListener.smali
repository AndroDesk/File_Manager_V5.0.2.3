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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;->mRefs:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$TabClickListener;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_f

    return-void

    :cond_f
    move-object v1, p1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->getTab()Landroidx/appcompat/app/a$d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/a$d;->select()V

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->access$300(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1f
    if-ge v4, v2, :cond_30

    invoke-static {v0, v4}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->access$400(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object v5

    if-ne v5, p1, :cond_29

    const/4 v6, 0x1

    goto :goto_2a

    :cond_29
    move v6, v3

    :goto_2a
    invoke-virtual {v5, v6}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_30
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->access$500(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;)Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-static {v1, v3}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->access$100(Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;Z)V

    :cond_39
    return-void
.end method
