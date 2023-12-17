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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/k$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lr1/k$a;->b:Ljava/lang/String;

    iput p3, p0, Lr1/k$a;->c:I

    return-void
.end method
