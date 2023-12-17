.class public final Lr1/k$a;
.super Ljava/lang/Object;
.source "UploadFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lr1/k$a;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lr1/k$a;->b:Ljava/lang/String;

    .line 8
    iput p3, p0, Lr1/k$a;->c:I

    .line 10
    return-void
.end method
