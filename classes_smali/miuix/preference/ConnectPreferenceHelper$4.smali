.class Lmiuix/preference/ConnectPreferenceHelper$4;
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
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$4;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper$4;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 3
    invoke-static {v0}, Lmiuix/preference/ConnectPreferenceHelper;->access$400(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 20
    return-void
.end method
