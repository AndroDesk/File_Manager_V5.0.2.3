.class public Lcom/google/android/gms/common/UserRecoverableException;
.super Ljava/lang/Exception;


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/UserRecoverableException;->mIntent:Landroid/content/Intent;

    .line 6
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/UserRecoverableException;->mIntent:Landroid/content/Intent;

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 8
    return-object v0
.end method
