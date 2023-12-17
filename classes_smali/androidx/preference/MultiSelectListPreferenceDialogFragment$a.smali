.class public final Landroidx/preference/MultiSelectListPreferenceDialogFragment$a;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/MultiSelectListPreferenceDialogFragment;->d(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Landroidx/preference/MultiSelectListPreferenceDialogFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$a;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .registers 6

    .line 1
    if-eqz p3, :cond_18

    .line 3
    iget-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$a;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    .line 5
    iget-boolean p3, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    .line 7
    iget-object v0, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    .line 9
    iget-object v1, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    .line 11
    aget-object p2, v1, p2

    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    move-result p2

    .line 21
    or-int/2addr p2, p3

    .line 22
    iput-boolean p2, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    .line 24
    goto :goto_2d

    .line 25
    :cond_18
    iget-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$a;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    .line 27
    iget-boolean p3, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    .line 29
    iget-object v0, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    .line 31
    iget-object v1, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    .line 33
    aget-object p2, v1, p2

    .line 35
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 42
    move-result p2

    .line 43
    or-int/2addr p2, p3

    .line 44
    iput-boolean p2, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    .line 46
    :goto_2d
    return-void
.end method
