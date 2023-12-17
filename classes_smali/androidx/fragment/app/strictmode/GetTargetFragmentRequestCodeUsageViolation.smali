.class public final Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;
.super Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;
.source "GetTargetFragmentRequestCodeUsageViolation.kt"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v1, "Attempting to get target request code from fragment "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/strictmode/TargetFragmentUsageViolation;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 26
    return-void
.end method
