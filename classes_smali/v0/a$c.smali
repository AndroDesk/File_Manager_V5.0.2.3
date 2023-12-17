.class public final Lv0/a$c;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/a$c;->b:Ljava/lang/String;

    iput p2, p0, Lv0/a$c;->a:I

    const/4 p1, 0x3

    iput p1, p0, Lv0/a$c;->c:I

    const/4 p1, 0x4

    iput p1, p0, Lv0/a$c;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/a$c;->b:Ljava/lang/String;

    iput p2, p0, Lv0/a$c;->a:I

    iput p3, p0, Lv0/a$c;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lv0/a$c;->d:I

    return-void
.end method
