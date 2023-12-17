.class public final Lg/c;
.super Lg/a;
.source "ActivityResultContracts.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/a<",
        "Landroid/content/Intent;",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lg/a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 4

    .line 1
    check-cast p2, Landroid/content/Intent;

    .line 3
    const-string v0, "context"

    .line 5
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string p1, "input"

    .line 10
    invoke-static {p2, p1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    return-object p2
.end method

.method public final c(ILandroid/content/Intent;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Landroidx/activity/result/ActivityResult;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    .line 6
    return-object v0
.end method
