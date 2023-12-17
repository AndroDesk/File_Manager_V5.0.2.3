.class public final Landroidx/preference/DropDownPreference$a;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/DropDownPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/DropDownPreference;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/DropDownPreference$a;->a:Landroidx/preference/DropDownPreference;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    if-ltz p3, :cond_23

    .line 3
    iget-object p1, p0, Landroidx/preference/DropDownPreference$a;->a:Landroidx/preference/DropDownPreference;

    .line 5
    iget-object p1, p1, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    .line 7
    aget-object p1, p1, p3

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Landroidx/preference/DropDownPreference$a;->a:Landroidx/preference/DropDownPreference;

    .line 15
    iget-object p2, p2, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_23

    .line 23
    iget-object p2, p0, Landroidx/preference/DropDownPreference$a;->a:Landroidx/preference/DropDownPreference;

    .line 25
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_23

    .line 31
    iget-object p2, p0, Landroidx/preference/DropDownPreference$a;->a:Landroidx/preference/DropDownPreference;

    .line 33
    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 36
    :cond_23
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
