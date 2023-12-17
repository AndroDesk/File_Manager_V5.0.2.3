.class Lmiuix/preference/ConnectPreferenceHelper$1;
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
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$1;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper$1;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 3
    invoke-static {v0}, Lmiuix/preference/ConnectPreferenceHelper;->access$000(Lmiuix/preference/ConnectPreferenceHelper;)Landroidx/preference/Preference;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_21

    .line 13
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper$1;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    .line 15
    invoke-static {v1}, Lmiuix/preference/ConnectPreferenceHelper;->access$100(Lmiuix/preference/ConnectPreferenceHelper;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_21

    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Integer;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result p1

    .line 31
    invoke-static {v0, p1}, Lg0/a$b;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 34
    :cond_21
    return-void
.end method
