.class public final Ly/g;
.super Ljava/lang/Object;
.source "KeyFrames.java"


# static fields
.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ly/d;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ly/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Ly/g;->b:Ljava/util/HashMap;

    .line 8
    :try_start_7
    const-string v1, "KeyAttribute"

    .line 10
    const-class v2, Ly/e;

    .line 12
    const/4 v3, 0x0

    .line 13
    new-array v4, v3, [Ljava/lang/Class;

    .line 15
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Ly/g;->b:Ljava/util/HashMap;

    .line 24
    const-string v1, "KeyPosition"

    .line 26
    const-class v2, Ly/h;

    .line 28
    new-array v4, v3, [Ljava/lang/Class;

    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Ly/g;->b:Ljava/util/HashMap;

    .line 39
    const-string v1, "KeyCycle"

    .line 41
    const-class v2, Ly/f;

    .line 43
    new-array v4, v3, [Ljava/lang/Class;

    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Ly/g;->b:Ljava/util/HashMap;

    .line 54
    const-string v1, "KeyTimeCycle"

    .line 56
    const-class v2, Ly/j;

    .line 58
    new-array v4, v3, [Ljava/lang/Class;

    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Ly/g;->b:Ljava/util/HashMap;

    .line 69
    const-string v1, "KeyTrigger"

    .line 71
    const-class v2, Ly/k;

    .line 73
    new-array v3, v3, [Ljava/lang/Class;

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_51} :catch_52

    .line 82
    goto :goto_5a

    .line 83
    :catch_52
    move-exception v0

    .line 84
    const-string v1, "KeyFrames"

    .line 86
    const-string v2, "unable to load"

    .line 88
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :goto_5a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Ly/g;->a:Ljava/util/HashMap;

    .line 11
    :try_start_a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    const/4 v2, 0x1

    .line 17
    if-eq v0, v2, :cond_dc

    .line 19
    const/4 v2, 0x2

    .line 20
    if-eq v0, v2, :cond_27

    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq v0, v2, :cond_1a

    .line 25
    goto/16 :goto_cd

    .line 27
    :cond_1a
    const-string v0, "KeyFrameSet"

    .line 29
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_cd

    .line 39
    return-void

    .line 40
    :cond_27
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    sget-object v2, Ly/g;->b:Ljava/util/HashMap;

    .line 46
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    move-result v2
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_31} :catch_d8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_31} :catch_d3

    .line 50
    if-eqz v2, :cond_aa

    .line 52
    :try_start_33
    sget-object v2, Ly/g;->b:Ljava/util/HashMap;

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 60
    if-eqz v2, :cond_81

    .line 62
    const/4 v0, 0x0

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ly/d;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_9d

    .line 71
    :try_start_46
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, p1, v1}, Ly/d;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iget-object v1, p0, Ly/g;->a:Ljava/util/HashMap;

    .line 80
    iget v2, v0, Ly/d;->b:I

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_6b

    .line 92
    iget-object v1, p0, Ly/g;->a:Ljava/util/HashMap;

    .line 94
    iget v2, v0, Ly/d;->b:I

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v2

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    .line 102
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_6b
    iget-object v1, p0, Ly/g;->a:Ljava/util/HashMap;

    .line 110
    iget v2, v0, Ly/d;->b:I

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ljava/util/ArrayList;

    .line 122
    if-eqz v1, :cond_a8

    .line 124
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_7e} :catch_7f

    .line 127
    goto :goto_a8

    .line 128
    :catch_7f
    move-exception v1

    .line 129
    goto :goto_a1

    .line 130
    :cond_81
    :try_start_81
    new-instance v2, Ljava/lang/NullPointerException;

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v4, "Keymaker for "

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v0, " not found"

    .line 147
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 157
    throw v2
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9d} :catch_9d

    .line 158
    :catch_9d
    move-exception v0

    .line 159
    move-object v5, v1

    .line 160
    move-object v1, v0

    .line 161
    move-object v0, v5

    .line 162
    :goto_a1
    :try_start_a1
    const-string v2, "KeyFrames"

    .line 164
    const-string v3, "unable to create "

    .line 166
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :cond_a8
    :goto_a8
    move-object v1, v0

    .line 170
    goto :goto_cd

    .line 171
    :cond_aa
    const-string v2, "CustomAttribute"

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_bc

    .line 179
    if-eqz v1, :cond_cd

    .line 181
    iget-object v0, v1, Ly/d;->c:Ljava/util/HashMap;

    .line 183
    if-eqz v0, :cond_cd

    .line 185
    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    .line 188
    goto :goto_cd

    .line 189
    :cond_bc
    const-string v2, "CustomMethod"

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_cd

    .line 197
    if-eqz v1, :cond_cd

    .line 199
    iget-object v0, v1, Ly/d;->c:Ljava/util/HashMap;

    .line 201
    if-eqz v0, :cond_cd

    .line 203
    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    .line 206
    :cond_cd
    :goto_cd
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 209
    move-result v0
    :try_end_d1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a1 .. :try_end_d1} :catch_d8
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_d1} :catch_d3

    .line 210
    goto/16 :goto_f

    .line 212
    :catch_d3
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    goto :goto_dc

    .line 217
    :catch_d8
    move-exception p1

    .line 218
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 221
    :cond_dc
    :goto_dc
    return-void
.end method
