.class Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$002(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
