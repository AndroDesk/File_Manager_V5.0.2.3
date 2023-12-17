.class Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;
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
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$002(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 7
    return-void
.end method
