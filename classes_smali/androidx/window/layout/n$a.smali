.class public final Landroidx/window/layout/n$a;
.super Ljava/lang/Object;
.source "WindowInfoTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Landroidx/window/layout/n$a;

.field public static b:Landroidx/window/layout/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroidx/window/layout/n$a;

    .line 3
    invoke-direct {v0}, Landroidx/window/layout/n$a;-><init>()V

    .line 6
    sput-object v0, Landroidx/window/layout/n$a;->a:Landroidx/window/layout/n$a;

    .line 8
    const-class v0, Landroidx/window/layout/n;

    .line 10
    invoke-static {v0}, Li3/i;->a(Ljava/lang/Class;)Li3/c;

    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Li3/c;->a:Ljava/lang/Class;

    .line 16
    const-string v1, "jClass"

    .line 18
    invoke-static {v0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1c

    .line 27
    goto/16 :goto_b3

    .line 29
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_7b

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    .line 42
    move-result-object v2

    .line 43
    const/16 v3, 0x24

    .line 45
    if-eqz v2, :cond_45

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Lo3/f;->n0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    goto :goto_b3

    .line 70
    :cond_45
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_62

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, v0}, Lo3/f;->n0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    goto :goto_b3

    .line 99
    :cond_62
    const/4 v0, 0x0

    .line 100
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    .line 103
    move-result v0

    .line 104
    const/4 v2, -0x1

    .line 105
    if-ne v0, v2, :cond_6b

    .line 107
    goto :goto_b3

    .line 108
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 113
    move-result v2

    .line 114
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    const-string v1, "this as java.lang.String…ing(startIndex, endIndex)"

    .line 120
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    goto :goto_b3

    .line 124
    :cond_7b
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_a7

    .line 130
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_b3

    .line 140
    sget-object v1, Li3/c;->c:Ljava/util/LinkedHashMap;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Ljava/lang/String;

    .line 152
    if-eqz v0, :cond_b3

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v0, "Array"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_b3

    .line 168
    :cond_a7
    sget-object v1, Li3/c;->c:Ljava/util/LinkedHashMap;

    .line 170
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Ljava/lang/String;

    .line 180
    :cond_b3
    :goto_b3
    sget-object v0, Landroidx/window/layout/d;->a:Landroidx/window/layout/d;

    .line 182
    sput-object v0, Landroidx/window/layout/n$a;->b:Landroidx/window/layout/d;

    .line 184
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
