.class Lmiuix/preference/ConnectPreferenceHelper$5;
.super Ljava/lang/Object;
.source "ConnectPreferenceHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/ConnectPreferenceHelper;->initAnim(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/ConnectPreferenceHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/preference/ConnectPreferenceHelper;)V
    .registers 2

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_1d
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
