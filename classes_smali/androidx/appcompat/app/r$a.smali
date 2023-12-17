.class public final Landroidx/appcompat/app/r$a;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/reflect/Method;

.field public d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/app/r$a;->a:Landroid/view/View;

    .line 6
    iput-object p2, p0, Landroidx/appcompat/app/r$a;->b:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/r$a;->c:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_8a

    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/r$a;->a:Landroid/view/View;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    :goto_c
    if-eqz v0, :cond_38

    .line 15
    :try_start_e
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_2b

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Landroidx/appcompat/app/r$a;->b:Ljava/lang/String;

    .line 27
    new-array v5, v2, [Ljava/lang/Class;

    .line 29
    const-class v6, Landroid/view/View;

    .line 31
    aput-object v6, v5, v1

    .line 33
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_2b

    .line 39
    iput-object v3, p0, Landroidx/appcompat/app/r$a;->c:Ljava/lang/reflect/Method;

    .line 41
    iput-object v0, p0, Landroidx/appcompat/app/r$a;->d:Landroid/content/Context;
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_8a

    .line 44
    :catch_2b
    :cond_2b
    instance-of v3, v0, Landroid/content/ContextWrapper;

    .line 46
    if-eqz v3, :cond_36

    .line 48
    check-cast v0, Landroid/content/ContextWrapper;

    .line 50
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 53
    move-result-object v0

    .line 54
    goto :goto_c

    .line 55
    :cond_36
    const/4 v0, 0x0

    .line 56
    goto :goto_c

    .line 57
    :cond_38
    iget-object p1, p0, Landroidx/appcompat/app/r$a;->a:Landroid/view/View;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 62
    move-result p1

    .line 63
    const/4 v0, -0x1

    .line 64
    if-ne p1, v0, :cond_44

    .line 66
    const-string p1, ""

    .line 68
    goto :goto_64

    .line 69
    :cond_44
    const-string v0, " with id \'"

    .line 71
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Landroidx/appcompat/app/r$a;->a:Landroid/view/View;

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string p1, "\'"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    :goto_64
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 103
    const-string v1, "Could not find method "

    .line 105
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    move-result-object v1

    .line 109
    iget-object v2, p0, Landroidx/appcompat/app/r$a;->b:Ljava/lang/String;

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view "

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v2, p0, Landroidx/appcompat/app/r$a;->a:Landroid/view/View;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    throw v0

    .line 139
    :cond_8a
    :goto_8a
    :try_start_8a
    iget-object v0, p0, Landroidx/appcompat/app/r$a;->c:Ljava/lang/reflect/Method;

    .line 141
    iget-object v3, p0, Landroidx/appcompat/app/r$a;->d:Landroid/content/Context;

    .line 143
    new-array v2, v2, [Ljava/lang/Object;

    .line 145
    aput-object p1, v2, v1

    .line 147
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catch Ljava/lang/IllegalAccessException; {:try_start_8a .. :try_end_95} :catch_9f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8a .. :try_end_95} :catch_96

    .line 150
    return-void

    .line 151
    :catch_96
    move-exception p1

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 154
    const-string v1, "Could not execute method for android:onClick"

    .line 156
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    throw v0

    .line 160
    :catch_9f
    move-exception p1

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 163
    const-string v1, "Could not execute non-public method for android:onClick"

    .line 165
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    throw v0
.end method
