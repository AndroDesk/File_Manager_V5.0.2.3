.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/gson/internal/reflect/ReflectionAccessor;->getInstance()Lcom/google/gson/internal/reflect/ReflectionAccessor;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    .line 10
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 12
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 14
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 16
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 18
    return-void
.end method

.method private createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;ZZ)",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    .line 1
    move-object v11, p0

    .line 2
    move-object v8, p1

    .line 3
    move-object/from16 v9, p4

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    .line 12
    move-result v10

    .line 13
    const-class v0, Lcom/google/gson/annotations/JsonAdapter;

    .line 15
    move-object v5, p2

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/google/gson/annotations/JsonAdapter;

    .line 22
    if-eqz v0, :cond_20

    .line 24
    iget-object v1, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 26
    iget-object v2, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 28
    invoke-virtual {v1, v2, p1, v9, v0}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    .line 31
    move-result-object v0

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    :goto_21
    if-eqz v0, :cond_25

    .line 36
    const/4 v1, 0x1

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    const/4 v1, 0x0

    .line 39
    :goto_26
    move v6, v1

    .line 40
    if-nez v0, :cond_2d

    .line 42
    invoke-virtual {p1, v9}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 45
    move-result-object v0

    .line 46
    :cond_2d
    move-object v7, v0

    .line 47
    new-instance v12, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .line 49
    move-object v0, v12

    .line 50
    move-object v1, p0

    .line 51
    move-object/from16 v2, p3

    .line 53
    move/from16 v3, p5

    .line 55
    move/from16 v4, p6

    .line 57
    move-object v5, p2

    .line 58
    move-object v8, p1

    .line 59
    move-object/from16 v9, p4

    .line 61
    invoke-direct/range {v0 .. v10}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Z)V

    .line 64
    return-object v12
.end method

.method public static excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z
    .registers 4

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2, p0, p1}, Lcom/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 3
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 5
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    return-object v8

    .line 15
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 18
    move-result-object v9

    .line 19
    move-object/from16 v10, p2

    .line 21
    move-object/from16 v11, p3

    .line 23
    :goto_16
    const-class v0, Ljava/lang/Object;

    .line 25
    if-eq v11, v0, :cond_d1

    .line 27
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 30
    move-result-object v12

    .line 31
    array-length v13, v12

    .line 32
    const/4 v14, 0x0

    .line 33
    move v15, v14

    .line 34
    :goto_21
    if-ge v15, v13, :cond_bb

    .line 36
    aget-object v6, v12, v15

    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {v7, v6, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    .line 42
    move-result v0

    .line 43
    invoke-virtual {v7, v6, v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    .line 46
    move-result v16

    .line 47
    if-nez v0, :cond_34

    .line 49
    if-nez v16, :cond_34

    .line 51
    goto/16 :goto_9b

    .line 53
    :cond_34
    iget-object v1, v7, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    .line 55
    invoke-virtual {v1, v6}, Lcom/google/gson/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 58
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 65
    move-result-object v2

    .line 66
    invoke-static {v1, v11, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 69
    move-result-object v17

    .line 70
    invoke-direct {v7, v6}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    .line 73
    move-result-object v5

    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 78
    move-result v4

    .line 79
    move-object v3, v1

    .line 80
    move v2, v14

    .line 81
    :goto_50
    if-ge v2, v4, :cond_98

    .line 83
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Ljava/lang/String;

    .line 89
    if-eqz v2, :cond_5d

    .line 91
    move/from16 v18, v14

    .line 93
    goto :goto_5f

    .line 94
    :cond_5d
    move/from16 v18, v0

    .line 96
    :goto_5f
    invoke-static/range {v17 .. v17}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 99
    move-result-object v19

    .line 100
    move-object/from16 v0, p0

    .line 102
    move-object/from16 p2, v1

    .line 104
    move-object/from16 v1, p1

    .line 106
    move/from16 v20, v2

    .line 108
    move-object v2, v6

    .line 109
    move-object v14, v3

    .line 110
    move-object/from16 v3, p2

    .line 112
    move/from16 v21, v4

    .line 114
    move-object/from16 v4, v19

    .line 116
    move-object/from16 v19, v5

    .line 118
    move/from16 v5, v18

    .line 120
    move-object/from16 v22, v6

    .line 122
    move/from16 v6, v16

    .line 124
    invoke-direct/range {v0 .. v6}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 127
    move-result-object v0

    .line 128
    move-object/from16 v1, p2

    .line 130
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 136
    if-nez v14, :cond_8b

    .line 138
    move-object v3, v0

    .line 139
    goto :goto_8c

    .line 140
    :cond_8b
    move-object v3, v14

    .line 141
    :goto_8c
    add-int/lit8 v2, v20, 0x1

    .line 143
    move/from16 v0, v18

    .line 145
    move-object/from16 v5, v19

    .line 147
    move/from16 v4, v21

    .line 149
    move-object/from16 v6, v22

    .line 151
    const/4 v14, 0x0

    .line 152
    goto :goto_50

    .line 153
    :cond_98
    move-object v14, v3

    .line 154
    if-nez v14, :cond_9f

    .line 156
    :goto_9b
    add-int/lit8 v15, v15, 0x1

    .line 158
    const/4 v14, 0x0

    .line 159
    goto :goto_21

    .line 160
    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const-string v2, " declares multiple JSON fields named "

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v2, v14, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 187
    throw v0

    .line 188
    :cond_bb
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 195
    move-result-object v1

    .line 196
    invoke-static {v0, v11, v1}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 207
    move-result-object v11

    .line 208
    goto/16 :goto_16

    .line 210
    :cond_d1
    return-object v8
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/gson/annotations/SerializedName;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/gson/annotations/SerializedName;

    .line 9
    if-nez v0, :cond_15

    .line 11
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 13
    invoke-interface {v0, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    array-length v1, v0

    .line 31
    if-nez v1, :cond_25

    .line 33
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    array-length v2, v0

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 43
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    array-length p1, v0

    .line 50
    const/4 v2, 0x0

    .line 51
    :goto_32
    if-ge v2, p1, :cond_3c

    .line 53
    aget-object v3, v0, v2

    .line 55
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_32

    .line 61
    :cond_3c
    return-object v1
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_e

    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 17
    invoke-virtual {v1, p2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v2, v1, p1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    .line 30
    return-object v2
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    invoke-static {p1, p2, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z

    move-result p1

    return p1
.end method
