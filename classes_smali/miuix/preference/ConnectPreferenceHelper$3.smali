.class Lmiuix/preference/ConnectPreferenceHelper$3;
.super Ljava/lang/Object;
.source "ConnectPreferenceHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$3;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper$3;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 3
    invoke-static {v0}, Lmiuix/preference/ConnectPreferenceHelper;->access$300(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1b

    .line 9
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper$3;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 11
    invoke-static {v0}, Lmiuix/preference/ConnectPreferenceHelper;->access$300(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    :cond_1b
    return-void
.end method
