.class public final Landroidx/preference/CheckBoxPreference$a;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/CheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/CheckBoxPreference;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/CheckBoxPreference$a;->a:Landroidx/preference/CheckBoxPreference;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/preference/CheckBoxPreference$a;->a:Landroidx/preference/CheckBoxPreference;

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_12

    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object p1, p0, Landroidx/preference/CheckBoxPreference$a;->a:Landroidx/preference/CheckBoxPreference;

    .line 21
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 24
    return-void
.end method
