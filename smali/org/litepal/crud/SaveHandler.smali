.class Lorg/litepal/crud/SaveHandler;
.super Lorg/litepal/crud/DataHandler;
.source "SaveHandler.java"


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    return-void
.end method

.method private afterSave(Lorg/litepal/crud/DataSupport;Ljava/util/List;J)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, p3, p4}, Lorg/litepal/crud/SaveHandler;->throwIfSaveFailed(J)V

    .line 204
    invoke-direct {p0, p2}, Lorg/litepal/crud/SaveHandler;->getIdField(Ljava/util/List;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/litepal/crud/SaveHandler;->assignIdValue(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;J)V

    .line 205
    invoke-direct {p0, p1}, Lorg/litepal/crud/SaveHandler;->updateAssociatedTableWithFK(Lorg/litepal/crud/DataSupport;)V

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->insertIntermediateJoinTableValue(Lorg/litepal/crud/DataSupport;Z)V

    .line 207
    return-void
.end method

.method private afterUpdate(Lorg/litepal/crud/DataSupport;)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lorg/litepal/crud/SaveHandler;->updateAssociatedTableWithFK(Lorg/litepal/crud/DataSupport;)V

    .line 280
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->insertIntermediateJoinTableValue(Lorg/litepal/crud/DataSupport;Z)V

    .line 281
    invoke-direct {p0, p1}, Lorg/litepal/crud/SaveHandler;->clearFKValueInAssociatedTable(Lorg/litepal/crud/DataSupport;)V

    .line 282
    return-void
.end method

.method private assignIdValue(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;J)V
    .locals 7
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "idField"    # Ljava/lang/reflect/Field;
    .param p3, "id"    # J

    .prologue
    .line 329
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lorg/litepal/crud/SaveHandler;->giveBaseObjIdValue(Lorg/litepal/crud/DataSupport;J)V

    .line 330
    if-eqz p2, :cond_0

    .line 331
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/litepal/crud/SaveHandler;->giveModelIdValue(Lorg/litepal/crud/DataSupport;Ljava/lang/String;Ljava/lang/Class;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    return-void

    .line 333
    :catch_0
    move-exception v6

    .line 334
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeSave(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/SaveHandler;->putFieldsValue(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 175
    invoke-direct {p0, p3, p1}, Lorg/litepal/crud/SaveHandler;->putForeignKeyValue(Landroid/content/ContentValues;Lorg/litepal/crud/DataSupport;)V

    .line 176
    return-void
.end method

.method private beforeUpdate(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/SaveHandler;->putFieldsValue(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 251
    invoke-direct {p0, p3, p1}, Lorg/litepal/crud/SaveHandler;->putForeignKeyValue(Landroid/content/ContentValues;Lorg/litepal/crud/DataSupport;)V

    .line 252
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    return-void

    .line 252
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "fkName":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearFKValueInAssociatedTable(Lorg/litepal/crud/DataSupport;)V
    .locals 10
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 414
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v1

    .line 415
    .local v1, "associatedTableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 422
    return-void

    .line 415
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    .local v0, "associatedTableName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "fkColumnName":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 418
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, "whereClause":Ljava/lang/String;
    iget-object v6, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v3, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doSaveAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V
    .locals 3
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v2, "values":Landroid/content/ContentValues;
    invoke-direct {p0, p1, p2, v2}, Lorg/litepal/crud/SaveHandler;->beforeSave(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 150
    invoke-direct {p0, p1, v2}, Lorg/litepal/crud/SaveHandler;->saving(Lorg/litepal/crud/DataSupport;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 151
    .local v0, "id":J
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/litepal/crud/SaveHandler;->afterSave(Lorg/litepal/crud/DataSupport;Ljava/util/List;J)V

    .line 152
    return-void
.end method

.method private doUpdateAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 224
    .local v0, "values":Landroid/content/ContentValues;
    invoke-direct {p0, p1, p2, v0}, Lorg/litepal/crud/SaveHandler;->beforeUpdate(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 225
    invoke-direct {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->updating(Lorg/litepal/crud/DataSupport;Landroid/content/ContentValues;)V

    .line 226
    invoke-direct {p0, p1}, Lorg/litepal/crud/SaveHandler;->afterUpdate(Lorg/litepal/crud/DataSupport;)V

    .line 227
    return-void
.end method

.method private getIdField(Ljava/util/List;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 292
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 293
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/litepal/crud/SaveHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getWhereForJoinTableToDelete(Lorg/litepal/crud/DataSupport;)Ljava/lang/String;
    .locals 2
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v0, "where":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private giveModelIdValue(Lorg/litepal/crud/DataSupport;Ljava/lang/String;Ljava/lang/Class;J)V
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "idName"    # Ljava/lang/String;
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 358
    .local p3, "idType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/litepal/crud/SaveHandler;->shouldGiveModelIdValue(Ljava/lang/String;Ljava/lang/Class;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "value":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_0

    const-class v1, Ljava/lang/Integer;

    if-ne p3, v1, :cond_2

    .line 361
    :cond_0
    long-to-int v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 367
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lorg/litepal/crud/DynamicExecutor;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 369
    :cond_1
    return-void

    .line 362
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_3

    const-class v1, Ljava/lang/Long;

    if-ne p3, v1, :cond_4

    .line 363
    :cond_3
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 364
    .local v0, "value":Ljava/lang/Long;
    goto :goto_0

    .line 365
    .local v0, "value":Ljava/lang/Object;
    :cond_4
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    const-string v2, "id type is not supported. Only int or long is acceptable for id"

    invoke-direct {v1, v2}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private insertIntermediateJoinTableValue(Lorg/litepal/crud/DataSupport;Z)V
    .locals 14
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "isUpdate"    # Z

    .prologue
    .line 434
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v2

    .line 435
    .local v2, "associatedIdsM2M":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 436
    .local v6, "values":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 450
    return-void

    .line 436
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 437
    .local v4, "associatedTableName":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Lorg/litepal/crud/SaveHandler;->getIntermediateTableName(Lorg/litepal/crud/DataSupport;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "joinTableName":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 439
    iget-object v7, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lorg/litepal/crud/SaveHandler;->getWhereForJoinTableToDelete(Lorg/litepal/crud/DataSupport;)Ljava/lang/String;

    move-result-object v9

    .line 440
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 439
    invoke-virtual {v7, v5, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 442
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 443
    .local v3, "associatedIdsM2MSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 444
    .local v0, "associatedId":J
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 445
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    invoke-virtual {p0, v4}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    iget-object v7, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private putForeignKeyValue(Landroid/content/ContentValues;Lorg/litepal/crud/DataSupport;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 379
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v0

    .line 380
    .local v0, "associatedModelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    return-void

    .line 380
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    .local v1, "associatedTableName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 381
    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private saving(Lorg/litepal/crud/DataSupport;Landroid/content/ContentValues;)J
    .locals 3
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 189
    iget-object v0, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private shouldGiveModelIdValue(Ljava/lang/String;Ljava/lang/Class;J)Z
    .locals 3
    .param p1, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;J)Z"
        }
    .end annotation

    .prologue
    .line 482
    .local p2, "idType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfSaveFailed(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 307
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    const-string v1, "Save current model failed."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    return-void
.end method

.method private updateAssociatedTableWithFK(Lorg/litepal/crud/DataSupport;)V
    .locals 9
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 393
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    .line 394
    .local v0, "associatedModelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 404
    return-void

    .line 395
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 396
    .local v1, "associatedTableName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 397
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "fkName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 400
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 401
    iget-object v6, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v3}, Lorg/litepal/crud/SaveHandler;->getWhereOfIdsWithOr(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updating(Lorg/litepal/crud/DataSupport;Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 268
    iget-object v0, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id = ?"

    .line 269
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 268
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    return-void
.end method


# virtual methods
.method onSave(Lorg/litepal/crud/DataSupport;)V
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/litepal/crud/SaveHandler;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 76
    .local v2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0, v1}, Lorg/litepal/crud/SaveHandler;->getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 77
    .local v0, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->isSaved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 79
    invoke-direct {p0, p1, v2}, Lorg/litepal/crud/SaveHandler;->doSaveAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V

    .line 80
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 83
    invoke-direct {p0, p1, v2}, Lorg/litepal/crud/SaveHandler;->doUpdateAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V

    goto :goto_0
.end method

.method onSaveAll(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/litepal/crud/DataSupport;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v6, 0x0

    .line 106
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 107
    new-array v7, v6, [Lorg/litepal/crud/DataSupport;

    invoke-interface {p1, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/litepal/crud/DataSupport;

    .line 108
    .local v0, "array":[Lorg/litepal/crud/DataSupport;
    aget-object v4, v0, v6

    .line 109
    .local v4, "firstObj":Lorg/litepal/crud/DataSupport;
    invoke-virtual {v4}, Lorg/litepal/crud/DataSupport;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/litepal/crud/SaveHandler;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 111
    .local v5, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0, v3}, Lorg/litepal/crud/SaveHandler;->getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 112
    .local v1, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    array-length v7, v0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 124
    .end local v0    # "array":[Lorg/litepal/crud/DataSupport;
    .end local v1    # "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "firstObj":Lorg/litepal/crud/DataSupport;
    .end local v5    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_0
    return-void

    .line 112
    .restart local v0    # "array":[Lorg/litepal/crud/DataSupport;
    .restart local v1    # "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "firstObj":Lorg/litepal/crud/DataSupport;
    .restart local v5    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_1
    aget-object v2, v0, v6

    .line 113
    .local v2, "baseObj":Lorg/litepal/crud/DataSupport;
    invoke-virtual {v2}, Lorg/litepal/crud/DataSupport;->isSaved()Z

    move-result v8

    if-nez v8, :cond_2

    .line 114
    invoke-virtual {p0, v2, v1}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 115
    invoke-direct {p0, v2, v5}, Lorg/litepal/crud/SaveHandler;->doSaveAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V

    .line 116
    invoke-virtual {p0, v2, v1}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 121
    :goto_1
    invoke-virtual {v2}, Lorg/litepal/crud/DataSupport;->clearAssociatedData()V

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0, v2, v1}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 119
    invoke-direct {p0, v2, v5}, Lorg/litepal/crud/SaveHandler;->doUpdateAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V

    goto :goto_1
.end method
