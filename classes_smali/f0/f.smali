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

    .line 1
    new-instance v0, Lf0/f;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, v1, v1}, Lf0/f;-><init>(IIII)V

    .line 7
    sput-object v0, Lf0/f;->e:Lf0/f;

    .line 9
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lf0/f;->a:I

    .line 6
    iput p2, p0, Lf0/f;->b:I

    .line 8
    iput p3, p0, Lf0/f;->c:I

    .line 10
    iput p4, p0, Lf0/f;->d:I

    .line 12
    return-void
.end method

.method public static a(IIII)Lf0/f;
    .registers 5

    .line 1
    if-nez p0, :cond_b

    .line 3
    if-nez p1, :cond_b

    .line 5
    if-nez p2, :cond_b

    .line 7
    if-nez p3, :cond_b

    .line 9
    sget-object p0, Lf0/f;->e:Lf0/f;

    .line 11
    return-object p0

    .line 12
    :cond_b
    new-instance v0, Lf0/f;

    .line 14
    invoke-direct {v0, p0, p1, p2, p3}, Lf0/f;-><init>(IIII)V

    .line 17
    return-object v0
.end method

.method public static b(Landroid/graphics/Insets;)Lf0/f;
    .registers 4

    .line 1
    iget v0, p0, Landroid/graphics/Insets;->left:I

    .line 3
    iget v1, p0, Landroid/graphics/Insets;->top:I

    .line 5
    iget v2, p0, Landroid/graphics/Insets;->right:I

    .line 7
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    .line 9
    invoke-static {v0, v1, v2, p0}, Lf0/f;->a(IIII)Lf0/f;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public final c()Landroid/graphics/Insets;
    .registers 5

    .line 1
    iget v0, p0, Lf0/f;->a:I

    .line 3
    iget v1, p0, Lf0/f;->b:I

    .line 5
    iget v2, p0, Lf0/f;->c:I

    .line 7
    iget v3, p0, Lf0/f;->d:I

    .line 9
    invoke-static {v0, v1, v2, v3}, Lf0/f$a;->a(IIII)Landroid/graphics/Insets;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2f

    .line 8
    const-class v2, Lf0/f;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_10

    .line 16
    goto :goto_2f

    .line 17
    :cond_10
    check-cast p1, Lf0/f;

    .line 19
    iget v2, p0, Lf0/f;->d:I

    .line 21
    iget v3, p1, Lf0/f;->d:I

    .line 23
    if-eq v2, v3, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    iget v2, p0, Lf0/f;->a:I

    .line 28
    iget v3, p1, Lf0/f;->a:I

    .line 30
    if-eq v2, v3, :cond_20

    .line 32
    return v1

    .line 33
    :cond_20
    iget v2, p0, Lf0/f;->c:I

    .line 35
    iget v3, p1, Lf0/f;->c:I

    .line 37
    if-eq v2, v3, :cond_27

    .line 39
    return v1

    .line 40
    :cond_27
    iget v2, p0, Lf0/f;->b:I

    .line 42
    iget p1, p1, Lf0/f;->b:I

    .line 44
    if-eq v2, p1, :cond_2e

    .line 46
    return v1

    .line 47
    :cond_2e
    return v0

    .line 48
    :cond_2f
    :goto_2f
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lf0/f;->a:I

    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lf0/f;->b:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v1, p0, Lf0/f;->c:I

    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v1, p0, Lf0/f;->d:I

    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "Insets{left="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lf0/f;->a:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", top="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lf0/f;->b:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", right="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lf0/f;->c:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", bottom="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lf0/f;->d:I

    .line 39
    const/16 v2, 0x7d

    .line 41
    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
