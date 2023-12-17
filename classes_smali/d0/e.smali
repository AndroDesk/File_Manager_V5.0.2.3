.class public final Ld0/e;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/reflect/Field;

.field public static final c:Ljava/lang/reflect/Field;

.field public static final d:Ljava/lang/reflect/Method;

.field public static final e:Ljava/lang/reflect/Method;

.field public static final f:Ljava/lang/reflect/Method;

.field public static final g:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    const-class v0, Landroid/app/Activity;

    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    sput-object v1, Ld0/e;->g:Landroid/os/Handler;

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_e
    const-string v2, "android.app.ActivityThread"

    .line 17
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    move-result-object v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_15

    .line 21
    goto :goto_16

    .line 22
    :catchall_15
    move-object v2, v1

    .line 23
    :goto_16
    sput-object v2, Ld0/e;->a:Ljava/lang/Class;

    .line 25
    const/4 v2, 0x1

    .line 26
    :try_start_19
    const-string v3, "mMainThread"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_23

    .line 35
    goto :goto_24

    .line 36
    :catchall_23
    move-object v3, v1

    .line 37
    :goto_24
    sput-object v3, Ld0/e;->b:Ljava/lang/reflect/Field;

    .line 39
    :try_start_26
    const-string v3, "mToken"

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    .line 48
    goto :goto_31

    .line 49
    :catchall_30
    move-object v0, v1

    .line 50
    :goto_31
    sput-object v0, Ld0/e;->c:Ljava/lang/reflect/Field;

    .line 52
    sget-object v0, Ld0/e;->a:Ljava/lang/Class;

    .line 54
    const/4 v3, 0x3

    .line 55
    const-string v4, "performStopActivity"

    .line 57
    const/4 v5, 0x2

    .line 58
    const/4 v6, 0x0

    .line 59
    if-nez v0, :cond_3d

    .line 61
    goto :goto_53

    .line 62
    :cond_3d
    :try_start_3d
    new-array v7, v3, [Ljava/lang/Class;

    .line 64
    const-class v8, Landroid/os/IBinder;

    .line 66
    aput-object v8, v7, v6

    .line 68
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 70
    aput-object v8, v7, v2

    .line 72
    const-class v8, Ljava/lang/String;

    .line 74
    aput-object v8, v7, v5

    .line 76
    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_53

    .line 83
    goto :goto_54

    .line 84
    :catchall_53
    :goto_53
    move-object v0, v1

    .line 85
    :goto_54
    sput-object v0, Ld0/e;->d:Ljava/lang/reflect/Method;

    .line 87
    sget-object v0, Ld0/e;->a:Ljava/lang/Class;

    .line 89
    if-nez v0, :cond_5b

    .line 91
    goto :goto_6d

    .line 92
    :cond_5b
    :try_start_5b
    new-array v7, v5, [Ljava/lang/Class;

    .line 94
    const-class v8, Landroid/os/IBinder;

    .line 96
    aput-object v8, v7, v6

    .line 98
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 100
    aput-object v8, v7, v2

    .line 102
    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_6c
    .catchall {:try_start_5b .. :try_end_6c} :catchall_6d

    .line 109
    goto :goto_6e

    .line 110
    :catchall_6d
    :goto_6d
    move-object v0, v1

    .line 111
    :goto_6e
    sput-object v0, Ld0/e;->e:Ljava/lang/reflect/Method;

    .line 113
    sget-object v0, Ld0/e;->a:Ljava/lang/Class;

    .line 115
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    const/16 v7, 0x1a

    .line 119
    if-eq v4, v7, :cond_7f

    .line 121
    const/16 v7, 0x1b

    .line 123
    if-ne v4, v7, :cond_7d

    .line 125
    goto :goto_7f

    .line 126
    :cond_7d
    move v4, v6

    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    :goto_7f
    move v4, v2

    .line 129
    :goto_80
    if-eqz v4, :cond_b9

    .line 131
    if-nez v0, :cond_85

    .line 133
    goto :goto_b9

    .line 134
    :cond_85
    :try_start_85
    const-string v4, "requestRelaunchActivity"

    .line 136
    const/16 v7, 0x9

    .line 138
    new-array v7, v7, [Ljava/lang/Class;

    .line 140
    const-class v8, Landroid/os/IBinder;

    .line 142
    aput-object v8, v7, v6

    .line 144
    const-class v6, Ljava/util/List;

    .line 146
    aput-object v6, v7, v2

    .line 148
    const-class v6, Ljava/util/List;

    .line 150
    aput-object v6, v7, v5

    .line 152
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 154
    aput-object v5, v7, v3

    .line 156
    const/4 v3, 0x4

    .line 157
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 159
    aput-object v5, v7, v3

    .line 161
    const/4 v3, 0x5

    .line 162
    const-class v6, Landroid/content/res/Configuration;

    .line 164
    aput-object v6, v7, v3

    .line 166
    const/4 v3, 0x6

    .line 167
    const-class v6, Landroid/content/res/Configuration;

    .line 169
    aput-object v6, v7, v3

    .line 171
    const/4 v3, 0x7

    .line 172
    aput-object v5, v7, v3

    .line 174
    const/16 v3, 0x8

    .line 176
    aput-object v5, v7, v3

    .line 178
    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_b8
    .catchall {:try_start_85 .. :try_end_b8} :catchall_b9

    .line 185
    move-object v1, v0

    .line 186
    :catchall_b9
    :cond_b9
    :goto_b9
    sput-object v1, Ld0/e;->f:Ljava/lang/reflect/Method;

    .line 188
    return-void
.end method
