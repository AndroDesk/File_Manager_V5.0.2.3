.class public final Ld0/a;
.super Landroidx/core/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/a$a;,
        Ld0/a$b;,
        Ld0/a$f;,
        Ld0/a$c;,
        Ld0/a$e;,
        Ld0/a$d;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 9

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_7
    array-length v3, p1

    .line 9
    if-ge v2, v3, :cond_42

    .line 11
    aget-object v3, p1, v2

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_2c

    .line 19
    invoke-static {}, Li0/a;->a()Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_29

    .line 25
    aget-object v3, p1, v2

    .line 27
    const-string v4, "android.permission.POST_NOTIFICATIONS"

    .line 29
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_29

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_29
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_7

    .line 45
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    const-string p2, "Permission request for permissions "

    .line 49
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object p2

    .line 53
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    const-string v0, " must not contain null or empty values"

    .line 59
    invoke-static {p2, p1, v0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0

    .line 67
    :cond_42
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 70
    move-result v2

    .line 71
    if-lez v2, :cond_4d

    .line 73
    array-length v3, p1

    .line 74
    sub-int/2addr v3, v2

    .line 75
    new-array v3, v3, [Ljava/lang/String;

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move-object v3, p1

    .line 79
    :goto_4e
    if-lez v2, :cond_6c

    .line 81
    array-length v4, p1

    .line 82
    if-ne v2, v4, :cond_54

    .line 84
    return-void

    .line 85
    :cond_54
    move v2, v1

    .line 86
    :goto_55
    array-length v4, p1

    .line 87
    if-ge v1, v4, :cond_6c

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_69

    .line 99
    add-int/lit8 v4, v2, 0x1

    .line 101
    aget-object v5, p1, v1

    .line 103
    aput-object v5, v3, v2

    .line 105
    move v2, v4

    .line 106
    :cond_69
    add-int/lit8 v1, v1, 0x1

    .line 108
    goto :goto_55

    .line 109
    :cond_6c
    instance-of v0, p0, Ld0/a$f;

    .line 111
    if-eqz v0, :cond_76

    .line 113
    move-object v0, p0

    .line 114
    check-cast v0, Ld0/a$f;

    .line 116
    invoke-interface {v0, p2}, Ld0/a$f;->validateRequestPermissionsRequestCode(I)V

    .line 119
    :cond_76
    invoke-static {p0, p1, p2}, Ld0/a$c;->b(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 122
    return-void
.end method
