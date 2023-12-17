.class Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionMenuChangeAnimatorObject"
.end annotation


# instance fields
.field private mPosition:I

.field private mShowActionMenu:Z

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public reset(IZ)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    .line 3
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mShowActionMenu:Z

    .line 5
    return-void
.end method

.method public setValue(F)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2f

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 11
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2f

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;

    .line 31
    instance-of v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 33
    if-eqz v2, :cond_12

    .line 35
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    .line 37
    const/high16 v3, 0x3f800000  # 1.0f

    .line 39
    sub-float/2addr v3, p1

    .line 40
    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mShowActionMenu:Z

    .line 42
    xor-int/lit8 v5, v4, 0x1

    .line 44
    invoke-interface {v1, v2, v3, v4, v5}, Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    .line 47
    goto :goto_12

    .line 48
    :cond_2f
    return-void
.end method
