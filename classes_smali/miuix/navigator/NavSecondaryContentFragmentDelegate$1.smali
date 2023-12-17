.class Lmiuix/navigator/NavSecondaryContentFragmentDelegate$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavSecondaryContentFragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/NavSecondaryContentFragmentDelegate;->onCreateAnimator(IZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/NavSecondaryContentFragmentDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavSecondaryContentFragmentDelegate;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavSecondaryContentFragmentDelegate$1;->this$0:Lmiuix/navigator/NavSecondaryContentFragmentDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lmiuix/navigator/NavSecondaryContentFragmentDelegate$1;->this$0:Lmiuix/navigator/NavSecondaryContentFragmentDelegate;

    invoke-static {p1}, Lmiuix/navigator/NavSecondaryContentFragmentDelegate;->access$000(Lmiuix/navigator/NavSecondaryContentFragmentDelegate;)V

    return-void
.end method
