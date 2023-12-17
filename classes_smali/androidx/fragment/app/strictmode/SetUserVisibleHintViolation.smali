.class public final Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;
.super Landroidx/fragment/app/strictmode/Violation;
.source "SetUserVisibleHintViolation.kt"


# instance fields
.field private final isVisibleToUser:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Z)V
    .registers 5
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
    const-string v1, "Attempting to set user visible hint to "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " for fragment "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/strictmode/Violation;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 34
    iput-boolean p2, p0, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;->isVisibleToUser:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final isVisibleToUser()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;->isVisibleToUser:Z

    .line 3
    return v0
.end method
