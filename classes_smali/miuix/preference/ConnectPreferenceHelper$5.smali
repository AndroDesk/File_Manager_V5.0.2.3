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
.method public constructor <init>(Lmiuix/preference/ConnectPreferenceHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 3
    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1d

    .line 9
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 11
    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1d

    .line 21
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 23
    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 30
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
