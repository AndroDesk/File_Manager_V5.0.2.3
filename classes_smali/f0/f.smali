.class public final Lf0/f;
.super Ljava/lang/Object;
.source "Insets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/f$a;
    }
.end annotation


# static fields
.field public static final e:Lf0/f;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lf0/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lf0/f;-><init>(IIII)V

    sput-object v0, Lf0/f;->e:Lf0/f;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf0/f;->a:I

    iput p2, p0, Lf0/f;->b:I

    iput p3, p0, Lf0/f;->c:I

    iput p4, p0, Lf0/f;->d:I

    return-void
.end method

.method public static a(IIII)Lf0/f;
    .registers 5

    if-nez p0, :cond_b

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    if-nez p3, :cond_b

    sget-object p0, Lf0/f;->e:Lf0/f;

    return-object p0

    :cond_b
    new-instance v0, Lf0/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lf0/f;-><init>(IIII)V

    return-object v0
.end method

.method public static b(Landroid/graphics/Insets;)Lf0/f;
    .registers 4

    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget v1, p0, Landroid/graphics/Insets;->top:I

    iget v2, p0, Landroid/graphics/Insets;->right:I

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v1, v2, p0}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Landroid/graphics/Insets;
    .registers 5

    iget v0, p0, Lf0/f;->a:I

    iget v1, p0, Lf0/f;->b:I

    iget v2, p0, Lf0/f;->c:I

    iget v3, p0, Lf0/f;->d:I

    invoke-static {v0, v1, v2, v3}, Lf0/f$a;->a(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    const-class v2, Lf0/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2f

    :cond_10
    check-cast p1, Lf0/f;

    iget v2, p0, Lf0/f;->d:I

    iget v3, p1, Lf0/f;->d:I

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget v2, p0, Lf0/f;->a:I

    iget v3, p1, Lf0/f;->a:I

    if-eq v2, v3, :cond_20

    return v1

    :cond_20
    iget v2, p0, Lf0/f;->c:I

    iget v3, p1, Lf0/f;->c:I

    if-eq v2, v3, :cond_27

    return v1

    :cond_27
    iget v2, p0, Lf0/f;->b:I

    iget p1, p1, Lf0/f;->b:I

    if-eq v2, p1, :cond_2e

    return v1

    :cond_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lf0/f;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lf0/f;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lf0/f;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lf0/f;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, "Insets{left="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lf0/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf0/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf0/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf0/f;->d:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
