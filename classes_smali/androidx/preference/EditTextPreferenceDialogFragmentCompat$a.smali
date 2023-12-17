.class public final Landroidx/preference/EditTextPreferenceDialogFragmentCompat$a;
.super Ljava/lang/Object;
.source "EditTextPreferenceDialogFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/EditTextPreferenceDialogFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/EditTextPreferenceDialogFragmentCompat;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat$a;->a:Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat$a;->a:Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    .line 3
    invoke-virtual {v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->scheduleShowSoftInputInner()V

    .line 6
    return-void
.end method
